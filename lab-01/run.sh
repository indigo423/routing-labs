#!/usr/bin/env bash
sudo clab deploy --topo lab-01.clab.yml
sleep 1
./disable-lldp-mgmt.sh
