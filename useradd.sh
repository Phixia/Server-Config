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

/bin/useradd -m -s $SHELL $USER

if [ $? != "0"]; then
fail
fi

success