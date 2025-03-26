#!/bin/bash

systemctl disable greengrass-lite.target
systemctl disable --with-dependencies greengrass-lite.target
systemctl stop --with-dependencies greengrass-lite.target
systemctl disable com.gglite.stm32.SdkComponent
systemctl stop com.gglite.stm32.SdkComponent
systemctl daemon-reload
rm -rf /lib/systemd/system/greengrass-lite.target
rm -rf /usr/lib/systemd/system/ggl.*
rm -rf /usr/lib/systemd/system/greengrass-lite.target
rm -rf /etc/systemd/system/greengrass-lite.target.wants
rm -rf /etc/systemd/system/ggl.*
rm -rf /etc/greengrass/*
rm -rf /var/lib/greengrass/*
systemctl daemon-reload
