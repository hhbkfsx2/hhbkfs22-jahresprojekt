#!/bin/bash

#killall dhclient

RIP1="2001:4dd0:fc0b:a::1"
RIP2="2001:4dd0:fc0b:f4::1"
SIP1="2001:4dd0:fc0b:a::2"
SIP2="2001:4dd0:fc0b:f4::2"
KVM="2001:4dd0:fc0b:a::3"
SRV="2001:4dd0:fc0b:a::4"
DC="2001:4dd0:fc0b:f4::6"

IP="${RIP1} ${RIP2} ${SIP1} ${SIP2} ${KVM} ${SRV} ${DC}"

for i in ${IP}; do
	echo -e "Ping-Test $(date +%Y%d%m):\n"
	ping6 -c 3 ${IP} 2> /dev/null && echo -e "${i}: works\n" || echo -e "${i}: failed!\n"
done	
