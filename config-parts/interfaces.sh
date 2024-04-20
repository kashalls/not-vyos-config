#!/bin/vbash

set interfaces ethernet eth2 description 'WAN - Cable'
set interfaces ethernet eth2 hw-id '58:11:22:4c:1d:10'
set interfaces ethernet eth2 address 'dhcp'
set interfaces ethernet eth2 address 'dhcpv6'
set interfaces ethernet eth2 dhcpv6-options pd 0 length '60'
set interfaces ethernet eth2 dhcpv6-options pd 0 interface eth1.10 address '10'
set interfaces ethernet eth2 dhcpv6-options pd 0 interface eth1.10 sla-id '10'
set interfaces ethernet eth2 dhcpv6-options pd 0 interface eth1.69 sla-id '69'
set interfaces ethernet eth2 dhcpv6-options rapid-commit
set interfaces ethernet eth2 ipv6 address autoconf

set interfaces ethernet eth1 address '10.1.0.1/24'
set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 hw-id 'a8:a1:59:c0:3c:33'
set interfaces ethernet eth1 vif 10 address '10.10.10.1/24'
set interfaces ethernet eth1 vif 10 description 'TRUSTED'
set interfaces ethernet eth1 vif 21 address '192.168.2.1/24'
set interfaces ethernet eth1 vif 21 description 'GUEST'
set interfaces ethernet eth1 vif 42 address '10.42.42.1/24'
set interfaces ethernet eth1 vif 42 description 'IOT'
set interfaces ethernet eth1 vif 69 address '10.69.0.1/24'
set interfaces ethernet eth1 vif 69 description 'SERVERS'
