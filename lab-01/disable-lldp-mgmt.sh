#!/usr/bin/env bash
for i in {1..7}; do
  echo "Disabled LLDP on eth0 on clab-lab-01-router${i}."
  docker exec clab-lab-01-router${i} lldpcli configure system interface pattern \!eth0,eth*;
done
