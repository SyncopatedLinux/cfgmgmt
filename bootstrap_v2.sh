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

# and so it begins...
wipe && say "hello!\n" $GREEN && sleep 0.5

function prompt_for_userid() {
    read -p "Please enter the user id: " userid
    echo $userid
}

userid=$(prompt_for_userid)
echo "You entered: $userid"

# clean cache
pacman -Scc --noconfirm > /dev/null

say "-----------------------------------------------" $BLUE
say "enabling ssh" $BLUE
say "-----------------------------------------------\n" $BLUE

systemctl enable sshd

sleep 0.5

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE

read -p "Do you want to copy ssh keys from a remote host? (y/n) " COPY_KEYS

case $COPY_KEYS in
	[Yy]* )
		read -p "Enter the username and hostname of the remote host (e.g. user@example.com): " REMOTE_HOST
    # TODO: running as sudo, installs this in /root/.ssh
		cd /home/$userid && scp -r $REMOTE_HOST:~/.ssh .
    chown -R $userid:$userid /home/$userid/
		;;
	[Nn]* )
		echo "Skipping ssh key copy."
		;;
	* )
		echo "Invalid input. Skipping ssh key copy."
		;;
esac

# Install oh-my-zsh
export ZSH="/usr/local/share/oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE
say "running ansible-pull" $BLUE
say "-----------------------------------------------\n" $BLUE


ansible-pull -U https://gitlab.com/b08x/ohmannium.git -C development -i "$(hostnamectl --static)"

# yadm clone git@github.com:b08x/dots.git
