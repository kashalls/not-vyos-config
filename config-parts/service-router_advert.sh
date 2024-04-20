#!/bin/vbash

# LAN
set service router-advert interface eth1 default-preference 'high'
set service router-advert interface eth1 interval max '600'
set service router-advert interface eth1 name-server 'fdd6:44d4:6900::4'
set service router-advert interface eth1 prefix ::/64 valid-lifetime '2592000'

# TRUSTED
set service router-advert interface eth1.10 default-preference 'high'
set service router-advert interface eth1.10 interval max '600'
set service router-advert interface eth1.10 name-server 'fdd6:44d4:6900::4'
set service router-advert interface eth1.10 prefix ::/64 valid-lifetime '2592000'

# IOT
set service router-advert interface eth1.42 default-preference 'high'
set service router-advert interface eth1.42 interval max '600'
set service router-advert interface eth1.42 name-server 'fdd6:44d4:6900::4'
set service router-advert interface eth1.42 prefix ::/0 valid-lifetime '2592000'

# SERVER
set service router-advert interface eth1.69 default-preference 'high'
set service router-advert interface eth1.69 interval max '600'
set service router-advert interface eth1.69 name-server 'fdd6:44d4:6900::4'
set service router-advert interface eth1.69 prefix ::/64 valid-lifetime '2592000'