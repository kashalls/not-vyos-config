#!/bin/bash

load /opt/vyatta/etc/config.boot.default

## Setup initial
set interfaces ethernet eth0 description 'WAN - Cable'
set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 hw-id 'a8:a1:59:c0:3c:32'

set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 address '10.1.0.1/24'
set interfaces ethernet eth1 hw-id 'a8:a1:59:c0:3c:33'

## Setup System Authentication
set system login user kashall authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIPZh6Rn2tQ5jbxP/TJXQTdxFymMuwSySThx/Xv6B40uv'
set system login user kashall authentication public-keys personal type 'ssh-ed25519'

# delete system login user vyos
set service ssh disable-password-authentication
set service ssh port '22'

## Setup VyOS
delete system host-name
set system host-name 'dreamweaver'
set system domain-name 'outsideour.casa'
set system ipv6 disable-forwarding
set system name-server '1.1.1.1'
set system time-zone 'America/Los_Angeles'

## Setup Intial DHCP
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 default-router '10.1.0.1'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 name-server '1.1.1.1'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 start '10.1.0.10'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 stop '10.1.0.254'

## Setup NAT: ALL -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 outbound-interface name 'eth0'
set nat source rule 100 source address '10.1.0.1/24'
set nat source rule 100 translation address masquerade

## Setup Basic Firewall
set firewall global-options state-policy established action accept
set firewall global-options state-policy related action accept
set firewall global-options state-policy invalid action drop