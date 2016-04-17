#!/bin/bash

# Dieses Skript testet die Erreichbarkeit der Server im Netzwerksegment per 'ping'
# Webserver:	2001:4dd0:fc0b:0001::2
# Mailserver:	2001:4dd0:fc0b:0002::2

IPADDR_WEB="197.0.0.1"
#Prefix: /64
#IPADDR_WEB="2001:4dd0:fc0b::2"
#IPADDR_MAIL="2001:4dd0:fc0b::3"

LOGFILE="ping-test.log"

if [[ -e $(which ping) ]]; then
    echo "ping-Test $(date +%Y%m%d-%H:%M:%S)" >> ${LOGFILE}
    ping ${IPADDR_WEB} -c3 -W3  && echo "OK: Webserver (${IPADDR_WEB}) erreichbar." | tee -a ${LOGFILE} || echo "ERR: Webserver (${IPADDR_WEB}) nicht erreichbar." | tee -a ${LOGFILE}




else
    echo "ERR: 'ping'-command nicht gefunden."

fi

# vim: set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
