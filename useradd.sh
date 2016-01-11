#!/bin/bash
#
# Gotta run this as root or sudo

#Some helper functions

fail() {
  echo -e "${RED}fail${NORMAL}" >&2 ; exit 1
}

success() {
  echo -e "${GREEN}success${NORMAL}" ; exit 0
}

# Put your username here
USER=

# Put your shell here (I'm defaulting /bin/bash)
SHELL="/bin/bash"

useradd -m -s $SHELL $USER

if [ $? != "0"]; then
fail
fi

mv authorized_keys /home/$USER/.ssh/

if [ $? != "0"]; then
fail
fi

mv bashrc.txt /home/$USER/.bashrc

if [ $? != "0"]; then
fail
fi

echo "$USER	ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

if [ $? != "0"]; then
fail
fi

success
