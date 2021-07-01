#!/bin/bash

sudo sed -i 's/nameserver/\#nameserver/g' /etc/resolv.conf
sudo sh -c "echo 'nameserver 127.0.0.1' >> /etc/resolv.conf"
