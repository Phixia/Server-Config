#!/bin/bash
#adds your user to /etc/sudoers

#put your username here
USER=""

echo "$USER	ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
