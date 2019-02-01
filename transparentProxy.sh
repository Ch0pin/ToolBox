#!/bin/sh
echo '1' > /proc/sys/net/ipv4/ip_forward
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 172.16.42.42:8080
iptables -t nat -A POSTROUTING -j MASQUERADE
