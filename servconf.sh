#! /bin/bash
# This script preforms some really basic server conf
#Anders Nelson 1-11-2016

/bin/bash useradd.sh

/bin/bash sudoadd.sh

/bin/mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

/bin/mv newssh_config /etc/ssh/sshd_config

/etc/init.d/ssh restart



#more to come?
