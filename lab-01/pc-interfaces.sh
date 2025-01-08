#!/usr/bin/env bash
docker exec -d clab-lab-01-pc1 ip link set eth1 up
docker exec -d clab-lab-01-pc1 ip addr add 198.51.100.9/28 dev eth1
docker exec -d clab-lab-01-pc1 ip route add 198.51.100.0/24 via 198.51.100.1 dev eth1

sudo docker exec -d clab-lab-01-pc2 ip link set eth1 up
sudo docker exec -d clab-lab-01-pc2 ip addr add 198.51.100.25/28 dev eth1
sudo docker exec -d clab-lab-01-pc2 ip route add 198.51.100.0/24 via 198.51.100.17 dev eth1

sudo docker exec -d clab-lab-01-pc3 ip link set eth1 up
sudo docker exec -d clab-lab-01-pc3 ip addr add 198.51.100.41/28 dev eth1
sudo docker exec -d clab-lab-01-pc3 ip route add 198.51.100.0/24 via 198.51.100.33 dev eth1

sudo docker exec -d clab-lab-01-pc4 ip link set eth1 up
sudo docker exec -d clab-lab-01-pc4 ip addr add 198.51.100.57/28 dev eth1
sudo docker exec -d clab-lab-01-pc4 ip route add 198.51.100.0/24 via 198.51.100.49 dev eth1

sudo docker exec -d clab-lab-01-pc5 ip link set eth1 up
sudo docker exec -d clab-lab-01-pc5 ip addr add 198.51.100.73/28 dev eth1
sudo docker exec -d clab-lab-01-pc5 ip route add 198.51.100.0/24 via 198.51.100.65 dev eth1

sudo docker exec -d clab-lab-01-pc6 ip link set eth1 up
sudo docker exec -d clab-lab-01-pc6 ip addr add 198.51.100.89/28 dev eth1
sudo docker exec -d clab-lab-01-pc6 ip route add 198.51.100.0/24 via 198.51.100.81 dev eth1

sudo docker exec -d clab-lab-01-pc7 ip link set eth1 up
sudo docker exec -d clab-lab-01-pc7 ip addr add 198.51.100.105/28 dev eth1
sudo docker exec -d clab-lab-01-pc7 ip route add 198.51.100.0/24 via 198.51.100.97 dev eth1
