#!/bin/vbash

set interfaces ethernet eth0 description 'WAN - Cable'
set interfaces ethernet eth0 hw-id 'a8:a1:59:c0:3c:32'
set interfaces ethernet eth5 address 'dhcp'

set interfaces ethernet eth1 address '10.1.0.1/24'
set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 hw-id 'a8:a1:59:c0:3c:33'
set interfaces ethernet eth1 vif 10 address '10.10.10.0/24'
set interfaces ethernet eth1 vif 10 description 'TRUSTED'
set interfaces ethernet eth1 vif 21 address '192.168.2.1/24'
set interfaces ethernet eth1 vif 21 description 'GUEST'
set interfaces ethernet eth1 vif 42 address '10.42.42.0/24'
set interfaces ethernet eth1 vif 42 description 'IOT'
set interfaces ethernet eth1 vif 69 address '10.69.0.0/24'
set interfaces ethernet eth1 vif 69 description 'SERVERS'
