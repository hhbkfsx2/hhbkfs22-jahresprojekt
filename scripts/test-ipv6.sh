#!/bin/bash

#killall dhclient

RIP1="2001:4dd0:fc0b:a::1"
RIP2="2001:4dd0:fc0b:f4::1"
SIP1="2001:4dd0:fc0b:a::2"
SIP2="2001:4dd0:fc0b:f4::2"
KVM1="2001:4dd0:fc0b:a::3"
KVM2="2001:4dd0:fc0b:f4::3"
SRV="2001:4dd0:fc0b:a::4"
DC="2001:4dd0:fc0b:f4::5"

LOG="logs/test-ping_$(date +%Y%d%m).log"

IP="${RIP1} ${RIP2} ${SIP1} ${SIP2} ${KVM1} ${KVM2} ${SRV} ${DC}"

echo -e "##########" >> ${LOG}
echo -e "Ping-Test $(date +%Y%d%m):\n" >> ${LOG}
for i in ${IP}; do
	ping6 -c 1 ${i} 2> /dev/null
	if [[ $? -eq 0 ]]; then
		echo -e "${i}\t\tworks" >> ${LOG}
	else
		echo -e "${i}\t\tfailed!" >> ${LOG}
	fi
done	
echo -e "\n" >> ${LOG}
