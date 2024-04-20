#!/bin/vbash

# From GUEST to IOT
set firewall ipv6 name guest-iot-v6 default-action 'drop'
set firewall ipv6 name guest-iot-v6 description 'From GUEST to IOT'
set firewall ipv6 name guest-iot-v6 default-log
set firewall ipv6 name guest-iot-v6 rule 999 action 'drop'
set firewall ipv6 name guest-iot-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name guest-iot-v6 rule 999 state invalid
set firewall ipv6 name guest-iot-v6 rule 999 log

# From GUEST to LAN
set firewall ipv6 name guest-lan-v6 default-action 'drop'
set firewall ipv6 name guest-lan-v6 description 'From GUEST to LAN'
set firewall ipv6 name guest-lan-v6 default-log
set firewall ipv6 name guest-lan-v6 rule 999 action 'drop'
set firewall ipv6 name guest-lan-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name guest-lan-v6 rule 999 state invalid
set firewall ipv6 name guest-lan-v6 rule 999 log

# From GUEST to LOCAL
set firewall ipv6 name guest-local-v6 default-action 'drop'
set firewall ipv6 name guest-local-v6 description 'From GUEST to LOCAL'
set firewall ipv6 name guest-local-v6 default-log
set firewall ipv6 name guest-local-v6 rule 50 action 'accept'
set firewall ipv6 name guest-local-v6 rule 50 description 'Rule: accept_dhcp'
set firewall ipv6 name guest-local-v6 rule 50 destination port '67,68'
set firewall ipv6 name guest-local-v6 rule 50 protocol 'udp'
set firewall ipv6 name guest-local-v6 rule 50 source port '67,68'
set firewall ipv6 name guest-local-v6 rule 999 action 'drop'
set firewall ipv6 name guest-local-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name guest-local-v6 rule 999 state invalid
set firewall ipv6 name guest-local-v6 rule 999 log
# NEED TO FIREWALL DHCPV6

# From GUEST to SERVERS
set firewall ipv6 name guest-servers-v6 default-action 'drop'
set firewall ipv6 name guest-servers-v6 description 'From GUEST to SERVERS'
set firewall ipv6 name guest-servers-v6 default-log
set firewall ipv6 name guest-servers-v6 rule 999 action 'drop'
set firewall ipv6 name guest-servers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name guest-servers-v6 rule 999 state invalid
set firewall ipv6 name guest-servers-v6 rule 999 log

# From GUEST to CONTAINERS
set firewall ipv6 name guest-containers-v6 default-action 'drop'
set firewall ipv6 name guest-containers-v6 description 'From GUEST to CONTAINERS'
set firewall ipv6 name guest-containers-v6 default-log
set firewall ipv6 name guest-containers-v6 rule 40 action 'accept'
set firewall ipv6 name guest-containers-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name guest-containers-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name guest-containers-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name guest-containers-v6 rule 999 action 'drop'
set firewall ipv6 name guest-containers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name guest-containers-v6 rule 999 state invalid
set firewall ipv6 name guest-containers-v6 rule 999 log

# From GUEST to TRUSTED
set firewall ipv6 name guest-trusted-v6 default-action 'drop'
set firewall ipv6 name guest-trusted-v6 description 'From GUEST to TRUSTED'
set firewall ipv6 name guest-trusted-v6 default-log
set firewall ipv6 name guest-trusted-v6 rule 999 action 'drop'
set firewall ipv6 name guest-trusted-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name guest-trusted-v6 rule 999 state invalid
set firewall ipv6 name guest-trusted-v6 rule 999 log

# From GUEST to WAN
set firewall ipv6 name guest-wan default-action 'accept'
set firewall ipv6 name guest-wan description 'From GUEST to WAN'


# From IOT to GUEST
set firewall ipv6 name iot-guest default-action 'drop'
set firewall ipv6 name iot-guest description 'From IOT to GUEST'
set firewall ipv6 name iot-guest default-log
set firewall ipv6 name iot-guest rule 999 action 'drop'
set firewall ipv6 name iot-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name iot-guest rule 999 state invalid
set firewall ipv6 name iot-guest rule 999 log

# From IOT to LAN
set firewall ipv6 name iot-lan-v6 default-action 'drop'
set firewall ipv6 name iot-lan-v6 description 'From IOT to LAN'
set firewall ipv6 name iot-lan-v6 default-log
set firewall ipv6 name iot-lan-v6 rule 999 action 'drop'
set firewall ipv6 name iot-lan-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name iot-lan-v6 rule 999 state invalid
set firewall ipv6 name iot-lan-v6 rule 999 log

# From IOT to LOCAL
set firewall ipv6 name iot-local-v6 default-action 'drop'
set firewall ipv6 name iot-local-v6 description 'From IOT to LOCAL'
set firewall ipv6 name iot-local-v6 default-log
set firewall ipv6 name iot-local-v6 rule 50 action 'accept'
set firewall ipv6 name iot-local-v6 rule 50 description 'Rule: accept_dhcp'
set firewall ipv6 name iot-local-v6 rule 50 destination port '67,68'
set firewall ipv6 name iot-local-v6 rule 50 protocol 'udp'
set firewall ipv6 name iot-local-v6 rule 50 source port '67,68'
set firewall ipv6 name iot-local-v6 rule 60 action 'accept'
set firewall ipv6 name iot-local-v6 rule 60 description 'Rule: accept_ntp'
set firewall ipv6 name iot-local-v6 rule 60 destination port 'ntp'
set firewall ipv6 name iot-local-v6 rule 60 protocol 'udp'
set firewall ipv6 name iot-local-v6 rule 100 action 'accept'
set firewall ipv6 name iot-local-v6 rule 100 description 'Rule: accept_igmp'
set firewall ipv6 name iot-local-v6 rule 100 protocol '2'
set firewall ipv6 name iot-local-v6 rule 110 action 'accept'
set firewall ipv6 name iot-local-v6 rule 110 description 'Rule: accept_mdns'
set firewall ipv6 name iot-local-v6 rule 110 destination port 'mdns'
set firewall ipv6 name iot-local-v6 rule 110 protocol 'udp'
set firewall ipv6 name iot-local-v6 rule 110 source port 'mdns'
set firewall ipv6 name iot-local-v6 rule 200 action 'accept'
set firewall ipv6 name iot-local-v6 rule 200 description 'Rule: accept_discovery_from_sonos_players'
set firewall ipv6 name iot-local-v6 rule 200 destination group port-group multicast-udp
set firewall ipv6 name iot-local-v6 rule 200 protocol 'udp'
set firewall ipv6 name iot-local-v6 rule 999 action 'drop'
set firewall ipv6 name iot-local-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name iot-local-v6 rule 999 state invalid
set firewall ipv6 name iot-local-v6 rule 999 log

# From IOT to SERVERS
set firewall ipv6 name iot-servers-v6 default-action 'drop'
set firewall ipv6 name iot-servers-v6 description 'From IOT to SERVERS'
set firewall ipv6 name iot-servers-v6 default-log
set firewall ipv6 name iot-servers-v6 rule 999 action 'drop'
set firewall ipv6 name iot-servers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name iot-servers-v6 rule 999 state invalid
set firewall ipv6 name iot-servers-v6 rule 999 log

# From IOT to CONTAINERS
set firewall ipv6 name iot-containers-v6 default-action 'accept'
set firewall ipv6 name iot-containers-v6 description 'From IOT to CONTAINERS'
set firewall ipv6 name iot-containers-v6 rule 40 action 'accept'
set firewall ipv6 name iot-containers-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name iot-containers-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name iot-containers-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name iot-containers-v6 rule 999 action 'drop'
set firewall ipv6 name iot-containers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name iot-containers-v6 rule 999 state invalid
set firewall ipv6 name iot-containers-v6 rule 999 log

# From IOT to TRUSTED
set firewall ipv6 name iot-trusted-v6 default-action 'drop'
set firewall ipv6 name iot-trusted-v6 description 'From IOT to TRUSTED'
set firewall ipv6 name iot-trusted-v6 default-log
set firewall ipv6 name iot-trusted-v6 rule 999 action 'drop'
set firewall ipv6 name iot-trusted-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name iot-trusted-v6 rule 999 state invalid
set firewall ipv6 name iot-trusted-v6 rule 999 log

# From IOT to WAN
set firewall ipv6 name iot-wan default-action 'accept'
set firewall ipv6 name iot-wan description 'From IOT to WAN'

# From LAN to GUEST
set firewall ipv6 name lan-guest default-action 'drop'
set firewall ipv6 name lan-guest description 'From LAN to GUEST'
set firewall ipv6 name lan-guest default-log
set firewall ipv6 name lan-guest rule 999 action 'drop'
set firewall ipv6 name lan-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name lan-guest rule 999 state invalid
set firewall ipv6 name lan-guest rule 999 log

# From LAN to IOT
set firewall ipv6 name lan-iot-v6 default-action 'drop'
set firewall ipv6 name lan-iot-v6 description 'From LAN to IOT'
set firewall ipv6 name lan-iot-v6 default-log
set firewall ipv6 name lan-iot-v6 rule 999 action 'drop'
set firewall ipv6 name lan-iot-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name lan-iot-v6 rule 999 state invalid
set firewall ipv6 name lan-iot-v6 rule 999 log

# From LAN to LOCAL
set firewall ipv6 name lan-local-v6 default-action 'drop'
set firewall ipv6 name lan-local-v6 description 'From LAN to LOCAL'
set firewall ipv6 name lan-local-v6 default-log
set firewall ipv6 name lan-local-v6 rule 50 action 'accept'
set firewall ipv6 name lan-local-v6 rule 50 description 'Rule: accept_dhcp'
set firewall ipv6 name lan-local-v6 rule 50 destination port '67,68'
set firewall ipv6 name lan-local-v6 rule 50 protocol 'udp'
set firewall ipv6 name lan-local-v6 rule 50 source port '67,68'
set firewall ipv6 name lan-local-v6 rule 60 action 'accept'
set firewall ipv6 name lan-local-v6 rule 60 description 'Rule: accept_ntp'
set firewall ipv6 name lan-local-v6 rule 60 destination port 'ntp'
set firewall ipv6 name lan-local-v6 rule 60 protocol 'udp'
set firewall ipv6 name lan-local-v6 rule 999 action 'drop'
set firewall ipv6 name lan-local-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name lan-local-v6 rule 999 state invalid
set firewall ipv6 name lan-local-v6 rule 999 log

# From LAN to SERVERS
set firewall ipv6 name lan-servers-v6 default-action 'accept'
set firewall ipv6 name lan-servers-v6 description 'From LAN to SERVERS'
set firewall ipv6 name lan-servers-v6 default-log
set firewall ipv6 name lan-servers-v6 rule 999 action 'drop'
set firewall ipv6 name lan-servers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name lan-servers-v6 rule 999 state invalid
set firewall ipv6 name lan-servers-v6 rule 999 log

# From LAN to CONTAINERS
set firewall ipv6 name lan-containers-v6 default-action 'accept'
set firewall ipv6 name lan-containers-v6 description 'From LAN to CONTAINERS'
set firewall ipv6 name lan-containers-v6 rule 40 action 'accept'
set firewall ipv6 name lan-containers-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name lan-containers-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name lan-containers-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name lan-containers-v6 rule 999 action 'drop'
set firewall ipv6 name lan-containers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name lan-containers-v6 rule 999 state invalid
set firewall ipv6 name lan-containers-v6 rule 999 log

# From LAN to TRUSTED
set firewall ipv6 name lan-trusted-v6 default-action 'drop'
set firewall ipv6 name lan-trusted-v6 description 'From LAN to TRUSTED'
set firewall ipv6 name lan-trusted-v6 default-log
set firewall ipv6 name lan-trusted-v6 rule 999 action 'drop'
set firewall ipv6 name lan-trusted-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name lan-trusted-v6 rule 999 state invalid
set firewall ipv6 name lan-trusted-v6 rule 999 log

# From LAN to WAN
set firewall ipv6 name lan-wan default-action 'accept'
set firewall ipv6 name lan-wan description 'From LAN to WAN'

# From LOCAL to GUEST
set firewall ipv6 name local-guest default-action 'accept'
set firewall ipv6 name local-guest description 'From LOCAL to GUEST'
set firewall ipv6 name local-guest default-log
set firewall ipv6 name local-guest rule 999 action 'drop'
set firewall ipv6 name local-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name local-guest rule 999 state invalid
set firewall ipv6 name local-guest rule 999 log

# From LOCAL to IOT
set firewall ipv6 name local-iot-v6 default-action 'accept'
set firewall ipv6 name local-iot-v6 description 'From LOCAL to IOT'
set firewall ipv6 name local-iot-v6 default-log
set firewall ipv6 name local-iot-v6 rule 100 action 'accept'
set firewall ipv6 name local-iot-v6 rule 100 description 'Rule: accept_igmp'
set firewall ipv6 name local-iot-v6 rule 100 protocol '2'
set firewall ipv6 name local-iot-v6 rule 110 action 'accept'
set firewall ipv6 name local-iot-v6 rule 110 description 'Rule: accept_mdns'
set firewall ipv6 name local-iot-v6 rule 110 destination port 'mdns'
set firewall ipv6 name local-iot-v6 rule 110 protocol 'udp'
set firewall ipv6 name local-iot-v6 rule 110 source port 'mdns'
set firewall ipv6 name local-iot-v6 rule 999 action 'drop'
set firewall ipv6 name local-iot-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name local-iot-v6 rule 999 state invalid
set firewall ipv6 name local-iot-v6 rule 999 log

# From LOCAL to LAN
set firewall ipv6 name local-lan-v6 default-action 'accept'
set firewall ipv6 name local-lan-v6 description 'From LOCAL to LAN'
set firewall ipv6 name local-lan-v6 default-log
set firewall ipv6 name local-lan-v6 rule 999 action 'drop'
set firewall ipv6 name local-lan-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name local-lan-v6 rule 999 state invalid
set firewall ipv6 name local-lan-v6 rule 999 log

# From LOCAL to SERVERS
set firewall ipv6 name local-servers-v6 default-action 'accept'
set firewall ipv6 name local-servers-v6 description 'From LOCAL to SERVERS'
set firewall ipv6 name local-servers-v6 default-log
set firewall ipv6 name local-servers-v6 rule 40 action 'accept'
set firewall ipv6 name local-servers-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name local-servers-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name local-servers-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name local-servers-v6 rule 70 action 'accept'
set firewall ipv6 name local-servers-v6 rule 70 description 'Rule: accept_bgp'
set firewall ipv6 name local-servers-v6 rule 70 destination port 'bgp'
set firewall ipv6 name local-servers-v6 rule 70 protocol 'tcp'
# TODO: This needs to be more specific
set firewall ipv6 name local-servers-v6 rule 80 action 'accept'
set firewall ipv6 name local-servers-v6 rule 80 description 'Rule: accept_pxe'
set firewall ipv6 name local-servers-v6 rule 80 protocol 'udp'
set firewall ipv6 name local-servers-v6 rule 80 log
set firewall ipv6 name local-servers-v6 rule 100 action 'accept'
set firewall ipv6 name local-servers-v6 rule 100 description 'Rule: accept_k8s_api'
set firewall ipv6 name local-servers-v6 rule 100 destination port '6443'
set firewall ipv6 name local-servers-v6 rule 100 protocol 'tcp'
set firewall ipv6 name local-servers-v6 rule 999 action 'drop'
set firewall ipv6 name local-servers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name local-servers-v6 rule 999 state invalid
set firewall ipv6 name local-servers-v6 rule 999 log

# From LOCAL to CONTAINERS
set firewall ipv6 name local-containers-v6 default-action 'accept'
set firewall ipv6 name local-containers-v6 description 'From LOCAL to CONTAINERS'
set firewall ipv6 name local-containers-v6 rule 40 action 'accept'
set firewall ipv6 name local-containers-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name local-containers-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name local-containers-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name local-containers-v6 rule 999 action 'drop'
set firewall ipv6 name local-containers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name local-containers-v6 rule 999 state invalid
set firewall ipv6 name local-containers-v6 rule 999 log

# From LOCAL to TRUSTED
set firewall ipv6 name local-trusted-v6 default-action 'accept'
set firewall ipv6 name local-trusted-v6 description 'From LOCAL to TRUSTED'
set firewall ipv6 name local-trusted-v6 default-log
set firewall ipv6 name local-trusted-v6 rule 100 action 'accept'
set firewall ipv6 name local-trusted-v6 rule 100 description 'Rule: accept_igmp'
set firewall ipv6 name local-trusted-v6 rule 100 protocol '2'
set firewall ipv6 name local-trusted-v6 rule 110 action 'accept'
set firewall ipv6 name local-trusted-v6 rule 110 description 'Rule: accept_mdns'
set firewall ipv6 name local-trusted-v6 rule 110 destination port 'mdns'
set firewall ipv6 name local-trusted-v6 rule 110 protocol 'udp'
set firewall ipv6 name local-trusted-v6 rule 110 source port 'mdns'
set firewall ipv6 name local-trusted-v6 rule 200 action 'accept'
set firewall ipv6 name local-trusted-v6 rule 200 description 'Rule: accept_discovery_from_sonos_players'
set firewall ipv6 name local-trusted-v6 rule 200 destination group port-group multicast-udp
set firewall ipv6 name local-trusted-v6 rule 200 protocol 'udp'
set firewall ipv6 name local-trusted-v6 rule 400 action 'accept'
set firewall ipv6 name local-trusted-v6 rule 400 description 'Rule: accept_wireguard'
set firewall ipv6 name local-trusted-v6 rule 400 source port '51820'
set firewall ipv6 name local-trusted-v6 rule 400 protocol 'udp'
set firewall ipv6 name local-trusted-v6 rule 999 action 'drop'
set firewall ipv6 name local-trusted-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name local-trusted-v6 rule 999 state invalid
set firewall ipv6 name local-trusted-v6 rule 999 log

# From LOCAL to WAN
set firewall ipv6 name local-wan default-action 'accept'
set firewall ipv6 name local-wan description 'From LOCAL to WAN'

# From SERVERS to GUEST
set firewall ipv6 name servers-guest default-action 'accept'
set firewall ipv6 name servers-guest description 'From SERVERS to GUEST'
set firewall ipv6 name servers-guest default-log
set firewall ipv6 name servers-guest rule 999 action 'drop'
set firewall ipv6 name servers-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name servers-guest rule 999 state invalid
set firewall ipv6 name servers-guest rule 999 log

# From SERVERS to IOT
set firewall ipv6 name servers-iot-v6 default-action 'accept'
set firewall ipv6 name servers-iot-v6 description 'From SERVERS to IOT'
set firewall ipv6 name servers-iot-v6 default-log
set firewall ipv6 name servers-iot-v6 rule 999 action 'drop'
set firewall ipv6 name servers-iot-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name servers-iot-v6 rule 999 state invalid
set firewall ipv6 name servers-iot-v6 rule 999 log

# From SERVERS to LAN
set firewall ipv6 name servers-lan-v6 default-action 'accept'
set firewall ipv6 name servers-lan-v6 description 'From SERVERS to LAN'
set firewall ipv6 name servers-lan-v6 default-log
set firewall ipv6 name servers-lan-v6 rule 999 action 'drop'
set firewall ipv6 name servers-lan-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name servers-lan-v6 rule 999 state invalid
set firewall ipv6 name servers-lan-v6 rule 999 log

# From SERVERS to LOCAL
set firewall ipv6 name servers-local-v6 default-action 'accept'
set firewall ipv6 name servers-local-v6 description 'From SERVERS to LOCAL'
set firewall ipv6 name servers-local-v6 default-log
set firewall ipv6 name servers-local-v6 rule 50 action 'accept'
set firewall ipv6 name servers-local-v6 rule 50 description 'Rule: accept_dhcp'
set firewall ipv6 name servers-local-v6 rule 50 destination port '67,68'
set firewall ipv6 name servers-local-v6 rule 50 protocol 'udp'
set firewall ipv6 name servers-local-v6 rule 50 source port '67,68'
set firewall ipv6 name servers-local-v6 rule 60 action 'accept'
set firewall ipv6 name servers-local-v6 rule 60 description 'Rule: accept_ntp'
set firewall ipv6 name servers-local-v6 rule 60 destination port 'ntp'
set firewall ipv6 name servers-local-v6 rule 60 protocol 'udp'
set firewall ipv6 name servers-local-v6 rule 70 action 'accept'
set firewall ipv6 name servers-local-v6 rule 70 description 'Rule: accept_bgp'
set firewall ipv6 name servers-local-v6 rule 70 destination port 'bgp'
set firewall ipv6 name servers-local-v6 rule 70 protocol 'tcp'
set firewall ipv6 name servers-local-v6 rule 80 action 'accept'
set firewall ipv6 name servers-local-v6 rule 80 description 'Rule: accept_tftp'
set firewall ipv6 name servers-local-v6 rule 80 destination port '69'
set firewall ipv6 name servers-local-v6 rule 80 protocol 'udp'
set firewall ipv6 name servers-local-v6 rule 999 action 'drop'
set firewall ipv6 name servers-local-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name servers-local-v6 rule 999 state invalid
set firewall ipv6 name servers-local-v6 rule 999 log

# From SERVERS to CONTAINERS
set firewall ipv6 name servers-containers-v6 default-action 'accept'
set firewall ipv6 name servers-containers-v6 description 'From SERVERS to CONTAINERS'
set firewall ipv6 name servers-containers-v6 default-log
set firewall ipv6 name servers-containers-v6 rule 40 action 'accept'
set firewall ipv6 name servers-containers-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name servers-containers-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name servers-containers-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name servers-containers-v6 rule 999 action 'drop'
set firewall ipv6 name servers-containers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name servers-containers-v6 rule 999 state invalid
set firewall ipv6 name servers-containers-v6 rule 999 log

# From SERVERS to TRUSTED
set firewall ipv6 name servers-trusted-v6 default-action 'accept'
set firewall ipv6 name servers-trusted-v6 description 'From SERVERS to TRUSTED'
set firewall ipv6 name servers-trusted-v6 default-log
set firewall ipv6 name servers-trusted-v6 rule 999 action 'drop'
set firewall ipv6 name servers-trusted-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name servers-trusted-v6 rule 999 state invalid
set firewall ipv6 name servers-trusted-v6 rule 999 log

# From SERVERS to WAN
set firewall ipv6 name servers-wan default-action 'accept'
set firewall ipv6 name servers-wan description 'From SERVERS to WAN'

# From CONTAINERS to GUEST
set firewall ipv6 name containers-guest default-action 'drop'
set firewall ipv6 name containers-guest description 'From CONTAINERS to GUEST'
set firewall ipv6 name containers-guest default-log
set firewall ipv6 name containers-guest rule 999 action 'drop'
set firewall ipv6 name containers-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name containers-guest rule 999 state invalid
set firewall ipv6 name containers-guest rule 999 log

# From CONTAINERS to IOT
set firewall ipv6 name containers-iot-v6 default-action 'drop'
set firewall ipv6 name containers-iot-v6 description 'From CONTAINERS to IOT'
set firewall ipv6 name containers-iot-v6 default-log
set firewall ipv6 name containers-iot-v6 rule 999 action 'drop'
set firewall ipv6 name containers-iot-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name containers-iot-v6 rule 999 state invalid
set firewall ipv6 name containers-iot-v6 rule 999 log

# From CONTAINERS to LAN
set firewall ipv6 name containers-lan-v6 default-action 'drop'
set firewall ipv6 name containers-lan-v6 description 'From CONTAINERS to LAN'
set firewall ipv6 name containers-lan-v6 default-log
set firewall ipv6 name containers-lan-v6 rule 999 action 'drop'
set firewall ipv6 name containers-lan-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name containers-lan-v6 rule 999 state invalid
set firewall ipv6 name containers-lan-v6 rule 999 log

# From CONTAINERS to LOCAL
set firewall ipv6 name containers-local-v6 default-action 'drop'
set firewall ipv6 name containers-local-v6 description 'From CONTAINERS to LOCAL'
set firewall ipv6 name containers-local-v6 default-log
set firewall ipv6 name containers-local-v6 rule 40 action 'accept'
set firewall ipv6 name containers-local-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name containers-local-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name containers-local-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name containers-local-v6 rule 50 action 'accept'
set firewall ipv6 name containers-local-v6 rule 50 description 'Rule: accept_dhcp'
set firewall ipv6 name containers-local-v6 rule 50 destination port '67,68'
set firewall ipv6 name containers-local-v6 rule 50 protocol 'udp'
set firewall ipv6 name containers-local-v6 rule 50 source port '67,68'
set firewall ipv6 name containers-local-v6 rule 60 action 'accept'
set firewall ipv6 name containers-local-v6 rule 60 description 'Rule: accept_ntp'
set firewall ipv6 name containers-local-v6 rule 60 destination port 'ntp'
set firewall ipv6 name containers-local-v6 rule 60 protocol 'udp'
set firewall ipv6 name containers-local-v6 rule 999 action 'drop'
set firewall ipv6 name containers-local-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name containers-local-v6 rule 999 state invalid
set firewall ipv6 name containers-local-v6 rule 999 log

# From CONTAINERS to SERVERS
set firewall ipv6 name containers-servers-v6 default-action 'accept'
set firewall ipv6 name containers-servers-v6 description 'From CONTAINERS to SERVERS'
set firewall ipv6 name containers-servers-v6 rule 999 action 'drop'
set firewall ipv6 name containers-servers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name containers-servers-v6 rule 999 state invalid
set firewall ipv6 name containers-servers-v6 rule 999 log

# From CONTAINERS to TRUSTED
set firewall ipv6 name containers-trusted-v6 default-action 'drop'
set firewall ipv6 name containers-trusted-v6 description 'From CONTAINERS to TRUSTED'
set firewall ipv6 name containers-trusted-v6 default-log
set firewall ipv6 name containers-trusted-v6 rule 999 action 'drop'
set firewall ipv6 name containers-trusted-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name containers-trusted-v6 rule 999 state invalid
set firewall ipv6 name containers-trusted-v6 rule 999 log

# From CONTAINERS to WAN
set firewall ipv6 name containers-wan default-action 'accept'
set firewall ipv6 name containers-wan description 'From CONTAINERS to WAN'

# From TRUSTED to GUEST
set firewall ipv6 name trusted-guest default-action 'drop'
set firewall ipv6 name trusted-guest description 'From TRUSTED to GUEST'
set firewall ipv6 name trusted-guest default-log
set firewall ipv6 name trusted-guest rule 999 action 'drop'
set firewall ipv6 name trusted-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name trusted-guest rule 999 state invalid
set firewall ipv6 name trusted-guest rule 999 log

# From TRUSTED to IOT
set firewall ipv6 name trusted-iot-v6 default-action 'accept'
set firewall ipv6 name trusted-iot-v6 description 'From TRUSTED to IOT'
set firewall ipv6 name trusted-iot-v6 rule 999 action 'drop'
set firewall ipv6 name trusted-iot-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name trusted-iot-v6 rule 999 state invalid
set firewall ipv6 name trusted-iot-v6 rule 999 log

# From TRUSTED to LAN
set firewall ipv6 name trusted-lan-v6 default-action 'accept'
set firewall ipv6 name trusted-lan-v6 description 'From TRUSTED to LAN'
set firewall ipv6 name trusted-lan-v6 rule 999 action 'drop'
set firewall ipv6 name trusted-lan-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name trusted-lan-v6 rule 999 state invalid
set firewall ipv6 name trusted-lan-v6 rule 999 log

# From TRUSTED to LOCAL
set firewall ipv6 name trusted-local-v6 default-action 'accept'
set firewall ipv6 name trusted-local-v6 description 'From TRUSTED to LOCAL'
set firewall ipv6 name trusted-local-v6 rule 999 action 'drop'
set firewall ipv6 name trusted-local-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name trusted-local-v6 rule 999 state invalid
set firewall ipv6 name trusted-local-v6 rule 999 log

# From TRUSTED to SERVERS
set firewall ipv6 name trusted-servers-v6 default-action 'accept'
set firewall ipv6 name trusted-servers-v6 description 'From TRUSTED to SERVERS'
set firewall ipv6 name trusted-servers-v6 rule 999 action 'drop'
set firewall ipv6 name trusted-servers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name trusted-servers-v6 rule 999 state invalid
set firewall ipv6 name trusted-servers-v6 rule 999 log

# From TRUSTED to CONTAINERS
set firewall ipv6 name trusted-containers-v6 default-action 'accept'
set firewall ipv6 name trusted-containers-v6 description 'From TRUSTED to CONTAINERS'
set firewall ipv6 name trusted-containers-v6 rule 40 action 'accept'
set firewall ipv6 name trusted-containers-v6 rule 40 description 'Rule: accept_dns'
set firewall ipv6 name trusted-containers-v6 rule 40 destination port 'domain,domain-s'
set firewall ipv6 name trusted-containers-v6 rule 40 protocol 'tcp_udp'
set firewall ipv6 name trusted-containers-v6 rule 999 action 'drop'
set firewall ipv6 name trusted-containers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name trusted-containers-v6 rule 999 state invalid
set firewall ipv6 name trusted-containers-v6 rule 999 log

# From TRUSTED to WAN
set firewall ipv6 name trusted-wan default-action 'accept'
set firewall ipv6 name trusted-wan description 'From TRUSTED to WAN'

# From WAN to GUEST
set firewall ipv6 name wan-guest default-action 'drop'
set firewall ipv6 name wan-guest description 'From WAN to GUEST'
set firewall ipv6 name wan-guest default-log
set firewall ipv6 name wan-guest rule 20 action 'drop'
set firewall ipv6 name wan-guest rule 20 description 'Drop invalid state'
set firewall ipv6 name wan-guest rule 20 state invalid
set firewall ipv6 name wan-guest rule 21 action 'accept'
set firewall ipv6 name wan-guest rule 21 description 'Rule: accept_ipv6_icmp'
set firewall ipv6 name wan-guest rule 21 protocol 'ipv6-icmp'
set firewall ipv6 name wan-guest rule 31 action 'accept'
set firewall ipv6 name wan-guest rule 31 description 'Rule: accept_ipv6_packet_too_big'
set firewall ipv6 name wan-guest rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-guest rule 31 protocol 'ipv6-icmp'
set firewall ipv6 name wan-guest rule 999 action 'drop'
set firewall ipv6 name wan-guest rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name wan-guest rule 999 state invalid
set firewall ipv6 name wan-guest rule 999 log

# From WAN to IOT
set firewall ipv6 name wan-iot-v6 default-action 'drop'
set firewall ipv6 name wan-iot-v6 description 'From WAN to IOT'
set firewall ipv6 name wan-iot-v6 default-log
set firewall ipv6 name wan-iot-v6 rule 20 action 'drop'
set firewall ipv6 name wan-iot-v6 rule 20 description 'Drop invalid state'
set firewall ipv6 name wan-iot-v6 rule 20 state invalid
set firewall ipv6 name wan-iot-v6 rule 21 action 'accept'
set firewall ipv6 name wan-iot-v6 rule 21 description 'Rule: accept_ipv6_icmp'
set firewall ipv6 name wan-iot-v6 rule 21 protocol 'ipv6-icmp'
set firewall ipv6 name wan-iot-v6 rule 31 action 'accept'
set firewall ipv6 name wan-iot-v6 rule 31 description 'Rule: accept_ipv6_packet_too_big'
set firewall ipv6 name wan-iot-v6 rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-iot-v6 rule 31 protocol 'ipv6-icmp'
set firewall ipv6 name wan-iot-v6 rule 999 action 'drop'
set firewall ipv6 name wan-iot-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name wan-iot-v6 rule 999 state invalid
set firewall ipv6 name wan-iot-v6 rule 999 log

# From WAN to LAN
set firewall ipv6 name wan-lan-v6 default-action 'drop'
set firewall ipv6 name wan-lan-v6 description 'From WAN to LAN'
set firewall ipv6 name wan-lan-v6 default-log
set firewall ipv6 name wan-lan-v6 rule 20 action 'drop'
set firewall ipv6 name wan-lan-v6 rule 20 description 'Drop invalid state'
set firewall ipv6 name wan-lan-v6 rule 20 state invalid
set firewall ipv6 name wan-lan-v6 rule 21 action 'accept'
set firewall ipv6 name wan-lan-v6 rule 21 description 'Rule: accept_ipv6_icmp'
set firewall ipv6 name wan-lan-v6 rule 21 protocol 'ipv6-icmp'
set firewall ipv6 name wan-lan-v6 rule 31 action 'accept'
set firewall ipv6 name wan-lan-v6 rule 31 description 'Rule: accept_ipv6_packet_too_big'
set firewall ipv6 name wan-lan-v6 rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-lan-v6 rule 31 protocol 'ipv6-icmp'
set firewall ipv6 name wan-lan-v6 rule 999 action 'drop'
set firewall ipv6 name wan-lan-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name wan-lan-v6 rule 999 state invalid
set firewall ipv6 name wan-lan-v6 rule 999 log

# From WAN to LOCAL
set firewall ipv6 name wan-local-v6 default-action 'drop'
set firewall ipv6 name wan-local-v6 description 'From WAN to LOCAL v6'
set firewall ipv6 name wan-local-v6 default-log
set firewall ipv6 name wan-local-v6 rule 10 action 'drop'
set firewall ipv6 name wan-local-v6 rule 10 description 'Rule: drop_invalid'
set firewall ipv6 name wan-local-v6 rule 10 state invalid
set firewall ipv6 name wan-local-v6 rule 30 action 'accept'
set firewall ipv6 name wan-local-v6 rule 30 description 'Allow IPv6 icmp'
set firewall ipv6 name wan-local-v6 rule 30 protocol 'ipv6-icmp'
set firewall ipv6 name wan-local-v6 rule 31 action 'accept'
set firewall ipv6 name wan-local-v6 rule 31 description 'Rule: accept_ipv6_packet_too_big'
set firewall ipv6 name wan-local-v6 rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-local-v6 rule 31 protocol 'ipv6-icmp'
set firewall ipv6 name wan-local-v6 rule 40 action 'accept'
set firewall ipv6 name wan-local-v6 rule 40 description 'Rule: accept_dhcpv6'
set firewall ipv6 name wan-local-v6 rule 40 destination port '546'
set firewall ipv6 name wan-local-v6 rule 40 protocol 'udp'
set firewall ipv6 name wan-local-v6 rule 40 source port '547'
set firewall ipv6 name wan-local-v6 rule 100 action 'accept'
set firewall ipv6 name wan-local-v6 rule 100 description 'Rule: accept_wireguard'
set firewall ipv6 name wan-local-v6 rule 100 destination port '51820'
set firewall ipv6 name wan-local-v6 rule 100 protocol 'udp'

# From WAN to SERVERS
set firewall ipv6 name wan-servers-v6 default-action 'drop'
set firewall ipv6 name wan-servers-v6 description 'From WAN to SERVERS'
set firewall ipv6 name wan-servers-v6 default-log
set firewall ipv6 name wan-servers-v6 rule 20 action 'drop'
set firewall ipv6 name wan-servers-v6 rule 20 description 'Drop invalid state'
set firewall ipv6 name wan-servers-v6 rule 20 state invalid
set firewall ipv6 name wan-servers-v6 rule 21 action 'accept'
set firewall ipv6 name wan-servers-v6 rule 21 description 'ICMPv6 allow'
set firewall ipv6 name wan-servers-v6 rule 21 protocol 'ipv6-icmp'
set firewall ipv6 name wan-servers-v6 rule 31 action 'accept'
set firewall ipv6 name wan-servers-v6 rule 31 description 'Allow IPv6 Packet Too Big'
set firewall ipv6 name wan-servers-v6 rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-servers-v6 rule 31 protocol 'ipv6-icmp'
set firewall ipv6 name wan-servers-v6 rule 999 action 'drop'
set firewall ipv6 name wan-servers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name wan-servers-v6 rule 999 state invalid
set firewall ipv6 name wan-servers-v6 rule 999 log

# From WAN to CONTAINERS
set firewall ipv6 name wan-containers-v6 default-action 'drop'
set firewall ipv6 name wan-containers-v6 description 'From WAN to CONTAINERS'
set firewall ipv6 name wan-containers-v6 default-log
set firewall ipv6 name wan-containers-v6 rule 20 action 'drop'
set firewall ipv6 name wan-containers-v6 rule 20 description 'Drop invalid state'
set firewall ipv6 name wan-containers-v6 rule 20 state invalid
set firewall ipv6 name wan-containers-v6 rule 21 action 'accept'
set firewall ipv6 name wan-containers-v6 rule 21 description 'ICMPv6 allow'
set firewall ipv6 name wan-containers-v6 rule 21 protocol 'ipv6-icmp'
set firewall ipv6 name wan-containers-v6 rule 31 action 'accept'
set firewall ipv6 name wan-containers-v6 rule 31 description 'Allow IPv6 Packet Too Big'
set firewall ipv6 name wan-containers-v6 rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-containers-v6 rule 31 protocol 'ipv6-icmp'
set firewall ipv6 name wan-containers-v6 rule 999 action 'drop'
set firewall ipv6 name wan-containers-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name wan-containers-v6 rule 999 state invalid
set firewall ipv6 name wan-containers-v6 rule 999 log

# From WAN to TRUSTED
set firewall ipv6 name wan-trusted-v6 default-action 'drop'
set firewall ipv6 name wan-trusted-v6 description 'From WAN to TRUSTED'
set firewall ipv6 name wan-trusted-v6 default-log
set firewall ipv6 name wan-trusted-v6 rule 20 action 'drop'
set firewall ipv6 name wan-trusted-v6 rule 20 description 'Drop invalid state'
set firewall ipv6 name wan-trusted-v6 rule 20 state invalid
set firewall ipv6 name wan-trusted-v6 rule 21 action 'accept'
set firewall ipv6 name wan-trusted-v6 rule 21 description 'ICMPv6 allow'
set firewall ipv6 name wan-trusted-v6 rule 21 protocol 'ipv6-icmp'
set firewall ipv6 name wan-trusted-v6 rule 31 action 'accept'
set firewall ipv6 name wan-trusted-v6 rule 31 description 'Allow IPv6 Packet Too Big'
set firewall ipv6 name wan-trusted-v6 rule 31 icmpv6 type-name 'packet-too-big'
set firewall ipv6 name wan-trusted-v6 rule 31 protocol 'ipv6-icmp'
set firewall ipv6 name wan-trusted-v6 rule 999 action 'drop'
set firewall ipv6 name wan-trusted-v6 rule 999 description 'Rule: drop_invalid'
set firewall ipv6 name wan-trusted-v6 rule 999 state invalid
set firewall ipv6 name wan-trusted-v6 rule 999 log
