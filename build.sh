#!/bin/sh

INSTALL_DIR=$SDKTARGETSYSROOT/ramfs_addons
source  /opt/poky/rzn1/environment-setup-armv7vehf-vfpv4d16-poky-linux-gnueabi 

cp -fv ./nmc3.ramfs.config ./.config

CFLAGS="-I$SDKTARGETSYSROOT/usr/include/ $CFLAGS"
#bash make_single_applets.sh

[ -d $INSTALL_DIR ] || mkdir -p $INSTALL_DIR
make

install -T ./busybox $INSTALL_DIR/busybox
