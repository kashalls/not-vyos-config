#!/bin/vbash

set nat66 source rule 100 outbound-interface name 'eth0'
set nat66 source rule 100 protocol 'all'
set nat66 source rule 100 source prefix 'fdd6:44d4:6900::/64'
set nat66 source rule 100 translation address 'masquerade'