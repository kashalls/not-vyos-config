#!/bin/vbash

## Guests
set firewall zone guest interface 'eth1.21'
set firewall zone guest default-action 'drop'

# IPv4
set firewall zone guest from iot firewall name 'iot-guest'
set firewall zone guest from lan firewall name 'lan-guest'
set firewall zone guest from local firewall name 'local-guest'
set firewall zone guest from servers firewall name 'servers-guest'
set firewall zone guest from containers firewall name 'containers-guest'
set firewall zone guest from trusted firewall name 'trusted-guest'
set firewall zone guest from wan firewall name 'wan-guest'

# IPv6
set firewall zone guest from iot firewall ipv6-name 'iot-guest-v6'
set firewall zone guest from lan firewall ipv6-name 'lan-guest-v6'
set firewall zone guest from local firewall ipv6-name 'local-guest-v6'
set firewall zone guest from servers firewall ipv6-name 'servers-guest-v6'
set firewall zone guest from containers firewall ipv6-name 'containers-guest-v6'
set firewall zone guest from trusted firewall ipv6-name 'trusted-guest-v6'
set firewall zone guest from wan firewall ipv6-name 'wan-guest-v6'

## IOT
set firewall zone iot interface 'eth1.42'
set firewall zone iot default-action 'drop'

# IPv4
set firewall zone iot from guest firewall name 'guest-iot'
set firewall zone iot from lan firewall name 'lan-iot'
set firewall zone iot from local firewall name 'local-iot'
set firewall zone iot from servers firewall name 'servers-iot'
set firewall zone iot from containers firewall name 'containers-iot'
set firewall zone iot from trusted firewall name 'trusted-iot'
set firewall zone iot from wan firewall name 'wan-iot'

# IPv6
set firewall zone iot from guest firewall ipv6-name 'guest-iot-v6'
set firewall zone iot from lan firewall ipv6-name 'lan-iot-v6'
set firewall zone iot from local firewall ipv6-name 'local-iot-v6'
set firewall zone iot from servers firewall ipv6-name 'servers-iot-v6'
set firewall zone iot from containers firewall ipv6-name 'containers-iot-v6'
set firewall zone iot from trusted firewall ipv6-name 'trusted-iot-v6'
set firewall zone iot from wan firewall ipv6-name 'wan-iot-v6'

## LAN
set firewall zone lan interface 'eth1'
set firewall zone lan default-action 'drop'

# IPv4
set firewall zone lan from guest firewall name 'guest-lan'
set firewall zone lan from iot firewall name 'iot-lan'
set firewall zone lan from local firewall name 'local-lan'
set firewall zone lan from servers firewall name 'servers-lan'
set firewall zone lan from containers firewall name 'containers-lan'
set firewall zone lan from trusted firewall name 'trusted-lan'
set firewall zone lan from wan firewall name 'wan-lan'

# IPv6
set firewall zone lan from guest firewall ipv6-name 'guest-lan-v6'
set firewall zone lan from iot firewall ipv6-name 'iot-lan-v6'
set firewall zone lan from local firewall ipv6-name 'local-lan-v6'
set firewall zone lan from servers firewall ipv6-name 'servers-lan-v6'
set firewall zone lan from containers firewall ipv6-name 'containers-lan-v6'
set firewall zone lan from trusted firewall ipv6-name 'trusted-lan-v6'
set firewall zone lan from wan firewall ipv6-name 'wan-lan-v6'

## Local
set firewall zone local local-zone
set firewall zone local default-action 'drop'
set firewall zone local description 'Local router zone'

# IPv4
set firewall zone local from guest firewall name 'guest-local'
set firewall zone local from iot firewall name 'iot-local'
set firewall zone local from lan firewall name 'lan-local'
set firewall zone local from servers firewall name 'servers-local'
set firewall zone local from containers firewall name 'containers-local'
set firewall zone local from trusted firewall name 'trusted-local'
set firewall zone local from wan firewall name 'wan-local'

# IPv6
set firewall zone local from guest firewall ipv6-name 'guest-local-v6'
set firewall zone local from iot firewall ipv6-name 'iot-local-v6'
set firewall zone local from lan firewall ipv6-name 'lan-local-v6'
set firewall zone local from servers firewall ipv6-name 'servers-local-v6'
set firewall zone local from containers firewall ipv6-name 'containers-local-v6'
set firewall zone local from trusted firewall ipv6-name 'trusted-local-v6'
set firewall zone local from wan firewall ipv6-name 'wan-local-v6'

## Servers
set firewall zone servers interface 'eth1.69'
set firewall zone servers default-action 'drop'

# IPv4
set firewall zone servers from guest firewall name 'guest-servers'
set firewall zone servers from iot firewall name 'iot-servers'
set firewall zone servers from lan firewall name 'lan-servers'
set firewall zone servers from local firewall name 'local-servers'
set firewall zone servers from containers firewall name 'containers-servers'
set firewall zone servers from trusted firewall name 'trusted-servers'
set firewall zone servers from wan firewall name 'wan-servers'

# IPv6
set firewall zone servers from guest firewall ipv6-name 'guest-servers-v6'
set firewall zone servers from iot firewall ipv6-name 'iot-servers-v6'
set firewall zone servers from lan firewall ipv6-name 'lan-servers-v6'
set firewall zone servers from local firewall ipv6-name 'local-servers-v6'
set firewall zone servers from containers firewall ipv6-name 'containers-servers-v6'
set firewall zone servers from trusted firewall ipv6-name 'trusted-servers-v6'
set firewall zone servers from wan firewall ipv6-name 'wan-servers-v6'

## Containers
set firewall zone containers interface 'pod-containers'
set firewall zone containers default-action 'drop'
set firewall zone containers description 'NotVyOS containers zone'

# IPv4
set firewall zone containers from guest firewall name 'guest-containers'
set firewall zone containers from iot firewall name 'iot-containers'
set firewall zone containers from lan firewall name 'lan-containers'
set firewall zone containers from local firewall name 'local-containers'
set firewall zone containers from servers firewall name 'servers-containers'
set firewall zone containers from trusted firewall name 'trusted-containers'
set firewall zone containers from wan firewall name 'wan-containers'

# IPv6
set firewall zone containers from guest firewall ipv6-name 'guest-containers-v6'
set firewall zone containers from iot firewall ipv6-name 'iot-containers-v6'
set firewall zone containers from lan firewall ipv6-name 'lan-containers-v6'
set firewall zone containers from local firewall ipv6-name 'local-containers-v6'
set firewall zone containers from servers firewall ipv6-name 'servers-containers-v6'
set firewall zone containers from trusted firewall ipv6-name 'trusted-containers-v6'
set firewall zone containers from wan firewall ipv6-name 'wan-containers-v6'

## Trusted
set firewall zone trusted interface 'eth1.10'
set firewall zone trusted default-action 'drop'

# IPv4
set firewall zone trusted from guest firewall name 'guest-trusted'
set firewall zone trusted from iot firewall name 'iot-trusted'
set firewall zone trusted from lan firewall name 'lan-trusted'
set firewall zone trusted from local firewall name 'local-trusted'
set firewall zone trusted from servers firewall name 'servers-trusted'
set firewall zone trusted from containers firewall name 'containers-trusted'
set firewall zone trusted from wan firewall name 'wan-trusted'

# IPv6
set firewall zone trusted from guest firewall ipv6-name 'guest-trusted-v6'
set firewall zone trusted from iot firewall ipv6-name 'iot-trusted-v6'
set firewall zone trusted from lan firewall ipv6-name 'lan-trusted-v6'
set firewall zone trusted from local firewall ipv6-name 'local-trusted-v6'
set firewall zone trusted from servers firewall ipv6-name 'servers-trusted-v6'
set firewall zone trusted from containers firewall ipv6-name 'containers-trusted-v6'
set firewall zone trusted from wan firewall ipv6-name 'wan-trusted-v6'

## WAN
set firewall zone wan interface 'eth0'
set firewall zone wan default-action 'drop'

# IPv4
set firewall zone wan from guest firewall name 'guest-wan'
set firewall zone wan from iot firewall name 'iot-wan'
set firewall zone wan from lan firewall name 'lan-wan'
set firewall zone wan from local firewall name 'local-wan'
set firewall zone wan from servers firewall name 'servers-wan'
set firewall zone wan from containers firewall name 'containers-wan'
set firewall zone wan from trusted firewall name 'trusted-wan'

# IPv6
set firewall zone wan from guest firewall ipv6-name 'guest-wan-v6'
set firewall zone wan from iot firewall ipv6-name 'iot-wan-v6'
set firewall zone wan from lan firewall ipv6-name 'lan-wan-v6'
set firewall zone wan from local firewall ipv6-name 'local-wan-v6'
set firewall zone wan from servers firewall ipv6-name 'servers-wan-v6'
set firewall zone wan from containers firewall ipv6-name 'containers-wan-v6'
set firewall zone wan from trusted firewall ipv6-name 'trusted-wan-v6'