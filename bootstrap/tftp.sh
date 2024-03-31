#!/bin/bash

# Init TFTP
set service tftp-server directory '/config/tftpboot'
set service tftp-server listen-address 10.1.0.1
curl -L -o /config/tftpboot/ipxe.efi http://boot.ipxe.org/ipxe.efi
curl -L -o /config/tftpboot/undionly.kpxe http://boot.ipxe.org/undionly.kpxe

# Raspberry Pi TFTP
mkdir -p /config/raspi-tftp
curl -L -o /config/raspi-tftp/rpi4-uefi-ipxe.zip https://github.com/rgl/rpi4-uefi-ipxe/releases/latest/download/rpi4-uefi-ipxe.zip
unzip -d /config/raspi-tftp/rpi4-uefi-ipxe /config/raspi-tftp/rpi4-uefi-ipxe.zip
cp /config/raspi-tftp/rpi4-uefi-ipxe/efi/boot/bootaa64.efi /config/tftpboot/ipxe-arm64.efi

rm -rf /config/raspi-tftp

sudo chown -R tftp:tftp /config/tftpboot/