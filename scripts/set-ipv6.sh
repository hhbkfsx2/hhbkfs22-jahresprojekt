#!/bin/bash

ip a a 2001:4dd0:fc0b:f4::2/128 dev eth0
ip r a default via 2001:4dd0:fc0b:f4::1/128 
