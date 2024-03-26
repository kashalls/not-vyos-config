#!/bin/bash

set service tftp-server directory '/config/tftpboot'
set service tftp-server listen-address 10.1.0.1
curl -L -o /config/tftpboot/ipxe.efi http://boot.ipxe.org/ipxe.efi
curl -L -o /config/tftpboot/undionly.kpxe http://boot.ipxe.org/undionly.kpxe
sudo chown -R tftp:tftp /config/tftpboot/