#!/bin/vbash

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server nl.pool.ntp.org

# SSH server
set service ssh disable-password-authentication
set service ssh port '22'

# UDP Broadcast-Relay
set service broadcast-relay id 1 description 'Roku Relay'
set service broadcast-relay id 1 interface 'eth1.10'
set service broadcast-relay id 1 interface 'eth1.42'
set service broadcast-relay id 1 port '1900'

# mDNS Repeater
set service mdns repeater interface 'eth1.10'
set service mdns repeater interface 'eth1.42'

# TFTP server
set service tftp-server directory '/config/tftpboot'
set service tftp-server listen-address 10.1.0.1