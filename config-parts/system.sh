#!/bin/vbash

set system host-name 'dreamweaver'
set system domain-name 'outsideour.casa'

set system login user kashall authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIPZh6Rn2tQ5jbxP/TJXQTdxFymMuwSySThx/Xv6B40uv'
set system login user kashall authentication public-keys personal type 'ssh-ed25519'
delete system login user vyos

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog global facility all level info
set system syslog host 10.69.69.111 facility kern level 'warning'
set system syslog host 10.69.69.111 protocol 'tcp'
set system syslog host 10.69.69.111 port '6001'
set system syslog host 10.69.69.111 format 'octet-counted'

set system static-host-mapping host-name dreamweaver inet '10.1.0.1'

#set system task-scheduler task backup-config crontab-spec '30 0 * * *'
#set system task-scheduler task backup-config executable path '/config/scripts/task-config-backup-usb.sh'

set system time-zone 'America/Los_Angeles'