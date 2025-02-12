#!/usr/bin/env bash
for i in {1..8}; do
  echo "Disabled LLDP on eth0 on routing-lab-01-router${i}."
  docker exec routing-lab-01-router${i} lldpcli configure system interface pattern \!eth0,eth*;
done
