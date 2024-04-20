#!/bin/vbash

set firewall ipv6 forward filter default-action 'accept'
set firewall ipv6 forward filter rule 5 action 'jump'
set firewall ipv6 forward filter rule 5 inbound-interface name 'eth2'
set firewall ipv6 forward filter rule 5 jump-target 'WANv6_IN'

set firewall ipv6 input filter default-action 'accept'
set firewall ipv6 input filter rule 5 action 'jump'
set firewall ipv6 input filter rule 5 inbound-interface name 'eth2'
set firewall ipv6 input filter rule 5 jump-target 'wan-local'

set firewall ipv6 name WANv6_IN default-action 'drop'
set firewall ipv6 name WANv6_IN description 'WAN inbound traffic forwarded to LAN'
set firewall ipv6 name WANv6_IN rule 10 action 'accept'
set firewall ipv6 name WANv6_IN rule 10 description 'Allow established/related sessions'
set firewall ipv6 name WANv6_IN rule 10 state established
set firewall ipv6 name WANv6_IN rule 10 state related
set firewall ipv6 name WANv6_IN rule 20 action 'drop'
set firewall ipv6 name WANv6_IN rule 20 description 'Drop invalid state'
set firewall ipv6 name WANv6_IN rule 20 state invalid
set firewall ipv6 name WANv6_IN rule 21 action 'accept'
set firewall ipv6 name WANv6_IN rule 21 description 'ICMPv6 allow'
set firewall ipv6 name WANv6_IN rule 21 protocol 'icmpv6'
set firewall ipv6 name WANv6_IN rule 31 action 'accept'
set firewall ipv6 name WANv6_IN rule 31 description 'Allow IPv6 Packet Too Big'
set firewall ipv6 name WANv6_IN rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name WANv6_IN rule 31 protocol 'icmpv6'

# From WAN to LOCAL
set firewall ipv6 name wan-local default-action 'drop'
set firewall ipv6 name wan-local description 'From WAN to LOCAL'
set firewall ipv6 name wan-local default-log
set firewall ipv6 name wan-local rule 1 action 'drop'
set firewall ipv6 name wan-local rule 1 description 'Rule: drop_invalid'
set firewall ipv6 name wan-local rule 1 state invalid
set firewall ipv6 name wan-local rule 1 log
set firewall ipv6 name wan-local rule 10 action 'accept'
set firewall ipv6 name wan-local rule 10 description 'Allow established/related sessions'
set firewall ipv6 name wan-local rule 10 state established
set firewall ipv6 name wan-local rule 10 state related
set firewall ipv6 name wan-local rule 30 action 'accept'
set firewall ipv6 name wan-local rule 30 description 'Allow IPv6 icmp'
set firewall ipv6 name wan-local rule 30 protocol 'ipv6-icmp'
set firewall ipv6 name wan-local rule 31 action 'accept'
set firewall ipv6 name wan-local rule 31 description 'Allow IPv6 Packet Too Big'
set firewall ipv6 name wan-local rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-local rule 31 protocol 'icmpv6'
set firewall ipv6 name wan-local rule 40 action 'accept'
set firewall ipv6 name wan-local rule 40 description 'allow dhcpv6'
set firewall ipv6 name wan-local rule 40 destination port '546'
set firewall ipv6 name wan-local rule 40 protocol 'udp'
set firewall ipv6 name wan-local rule 40 source port '547'
set firewall ipv6 name wan-local rule 100 action 'accept'
set firewall ipv6 name wan-local rule 100 description 'Rule: accept_wireguard'
set firewall ipv6 name wan-local rule 100 destination port '51820'
set firewall ipv6 name wan-local rule 100 protocol 'udp'
