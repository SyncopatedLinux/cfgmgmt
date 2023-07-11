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
pacman -Syu rsync openssh python-pip --noconfirm > /dev/null

pip install -U ansible --break-system-packages

say "-----------------------------------------------" $BLUE
say "enabling ssh" $BLUE
say "-----------------------------------------------\n" $BLUE

systemctl enable sshd

sleep 0.5

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE

if [[ ! -f "/home/${userid}/.ssh/id_ed25519.pub" ]]; then
  read -p "Enter the username and hostname of the remote host (e.g. user@example.com): " REMOTE_HOST
  # TODO: running as sudo, installs this in /root/.ssh
  cd /home/$userid && rsync -avP --delete $REMOTE_HOST:~/.ssh .
  chown -R $userid:$userid /home/$userid/
else
  say "ssh keys present"
fi

# Install oh-my-zsh
if [ ! -d "/usr/local/share/oh-my-zsh" ]; then
  export ZSH="/usr/local/share/oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

if [[ $wipe == 'true' ]]; then wipe && sleep 1; fi
say "\n-----------------------------------------------" $BLUE
say "running ansible-pull" $BLUE
say "-----------------------------------------------\n" $BLUE

echo "$(hostnamectl --static) ansible_connection=local" > /tmp/inventory

ansible-pull -U git@github.com:SyncopatedLinux/cfgmgmt.git -C development -i /tmp/inventory
