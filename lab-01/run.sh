#!/usr/bin/env bash
sudo clab deploy --topo lab-01.clab.yml
./pc-interfaces.sh
./disable-lldp-mgmt.sh
