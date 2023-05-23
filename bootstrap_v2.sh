#!/bin/bash
set -e

# set a trap to exit with CTRL+C
ctrl_c() {
        echo "** End."
        sleep 1
}

trap ctrl_c INT SIGINT SIGTERM ERR EXIT

# Check if the user is root
if [[ $(id -u) -ne 0 ]]; then
   echo "This script must be run with sudo"
   exit 1
fi

# declare colors!
declare -rx ALL_OFF="\e[1;0m"
declare -rx BBOLD="\e[1;1m"
declare -rx BLUE="${BOLD}\e[1;34m"
declare -rx GREEN="${BOLD}\e[1;32m"
declare -rx RED="${BOLD}\e[1;31m"
declare -rx YELLOW="${BOLD}\e[1;33m"

# cli display functions
say () {
  local statement=$1
  local color=$2

  echo -e "${color}${statement}${ALL_OFF}"
}

wipe() {
tput -S <<!
clear
cup 1
!
}

wipe="false"

distro=""

# Determine distribution
if [ -f /etc/lsb-release ]; then
	. /etc/lsb-release
	distro=$DISTRIB_ID
elif [ -f /etc/debian_version ]; then
	distro="debian"
elif [ -f /etc/redhat-release ]; then
	distro="redhat"
fi



# and so it begins...
wipe && say "hello!\n" $GREEN && sleep 0.5

say "-----------------------------------------------" $BLUE
say "installing ssh, fd, ruby along with" $BLUE
say "gcc, g++, make, and other essential build tools" $BLUE
say "ssh will also be enabled and started." $BLUE
say "-----------------------------------------------\n" $BLUE

case $distro in
	Arch|Manjaro|blendOS)
		pacman -Syu --noconfirm --downloadonly --quiet
		pacman -S --noconfirm openssh base-devel fd ruby-bundler rubygems
		systemctl enable sshd
		systemctl start sshd
		;;
	Debian|Raspbian|MX)
		apt-get update --quiet
		apt-get install -y openssh-server build-essential fd-find ruby-rubygems ruby-bundler ruby-dev
		systemctl enable ssh
		systemctl start ssh
		;;
	*)
		echo "Unsupported distribution."
		exit 1
esac

sleep 0.5

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE

read -p "Do you want to copy ssh keys from a remote host? (y/n) " COPY_KEYS

case $COPY_KEYS in
	[Yy]* )
		read -p "Enter the username and hostname of the remote host (e.g. user@example.com): " REMOTE_HOST
    # TODO: running as sudo, installs this in /root/.ssh
		cd $HOME && scp -r $REMOTE_HOST:~/.ssh .
		;;
	[Nn]* )
		echo "Skipping ssh key copy."
		;;
	* )
		echo "Invalid input. Skipping ssh key copy."
		;;
esac


say "-----------------------------------------------\n" $BLUE
say "installing third party pacman keys" $BLUE
say "-----------------------------------------------\n" $BLUE

# clean cache
pacman -Scc --noconfirm > /dev/null

# install repository keys
if [[ ! -z "$(pacman-key --list-keys | grep syncopated 2>/dev/null)" ]];
then
  printf "key already installed"
else
  printf "adding syncopated gpg to pacman db"
  sleep 0.5
  curl -s http://soundbot.hopto.org/syncopated.gpg | sudo pacman-key --add -
  sudo pacman-key --lsign-key 36A6ECD355DB42B296C0CEE2157CA2FC56ECC96A > /dev/null
  sudo pacman -Sy --noconfirm > /dev/null
fi

if [[ ! -z "$(pacman-key --list-keys | grep proaudio 2>/dev/null)" ]];
then
  printf "key already installed"
else
  printf "adding OSAMC gpg to pacman db"
  sleep 0.5
  curl -s https://arch.osamc.de/proaudio/osamc.gpg | sudo pacman-key --add -
  sudo pacman-key --lsign-key 762AE5DB2B38786364BD81C4B9141BCC62D38EE5 > /dev/null
  sudo pacman -Sy --noconfirm > /dev/null
fi


say "-----------------------------------------------\n" $BLUE

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE
say "enable and start firewall service" $BLUE
say "set defaults to deny inbound and allow outbound" $BLUE
say "add rule to allow ssh traffic" $BLUE
say "-----------------------------------------------\n" $BLUE

# Set firewall rules
case $distro in
	Debian|Raspbian|MX)
		apt-get install -y ufw
		ufw default deny incoming
		ufw default allow outgoing
		ufw allow ssh
		ufw enable
		;;
	Arch|Manjaro|blendOS)
		pacman -S --noconfirm firewalld
		systemctl enable firewalld
		systemctl start firewalld
		firewall-cmd --zone=public --add-service=ssh --permanent
		firewall-cmd --reload
		;;
	*)
		echo "Unsupported distribution: $distro"
		exit 1
		;;
esac

sleep 0.5

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE
say "check for ansible installations..." $BLUE
say "if installed with a system package," $BLUE
say "remove the system package and install with pip" $BLUE
say "as of date, pip will install ansible 2.14.5" $BLUE
say "-----------------------------------------------\n" $BLUE

if [ -x "$(command -v ansible)" ]; then
  case $distro in
  	Debian|Raspbian|MX)
  			if apt-get remove -y ansible --quiet; then
  				echo "Ansible has been removed successfully."
  			else
  				echo "Failed to remove Ansible."
  			fi
  		;;
  	Arch|Manjaro|blendOS)
  			if pacman -Rdd ansible --noconfirm; then
  				echo "Ansible has been removed successfully."
  			else
  				echo "Failed to remove Ansible."
  			fi
  		;;
  	*)
  		echo "Unsupported distribution: $distro"
  		exit 1
  		;;
  esac
fi

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE
say "installing pip...." $BLUE && sleep 0.5
say "-----------------------------------------------\n" $BLUE

case $distro in
	Debian|Raspbian|MX)
		apt-get update --quiet
		apt-get install -y python3-pip
		;;
	Arch|Manjaro|blendOS)
		pacman -S --noconfirm python-pip
		;;
	*)
		echo "Unsupported distribution: $distro"
		exit 1
		;;
esac

say "\n-----------------------------------------------" $BLUE
say "installing ansible with pip..." $BLUE
say "-----------------------------------------------\n" $BLUE

pip install ansible


if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE
say "installing additional support packages..." $BLUE
say "-----------------------------------------------\n" $BLUE


BOOTSTRAP_PKGS=(
  'aria2'
  'bat'
  'bc'
  'cargo'
  'ccache'
  'cmake'
  'dialog'
  'git'
  'git-lfs'
  'htop'
  'lnav'
  'neovim'
  'net-tools'
  'unzip'
  'wget'
  'x11-ssh-askpass'
  'zsh'
)

case $distro in
	Debian|Raspbian|MX)
		apt-get update --quiet
		apt-get install -y "${BOOTSTRAP_PKGS[@]}"
		;;
	Arch|Manjaro|blendOS)
		pacman -Sy --noconfirm --needed "${BOOTSTRAP_PKGS[@]}"
		;;
	*)
		echo "Unsupported distribution: $distro"
		exit 1
		;;
esac


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
