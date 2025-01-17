# Lab 01

An environment to play, test and evaluate network monitoring solutions.
The environment uses the [Containerlab](https://containerlab.dev/) which allows to build and model complex routing networks using container runtimes.

> [!NOTE]
> Router3 is redistributing IS-IS into OSPF and vice versa.
> Router6 is redistributing BGP routes into IS-IS.

The lab uses IPv4 and IPv6 network ranges reserved for documentation purposes.
It should help you to run these labs with minimal interference of production network addressing schemes.
The networks used for this lab are described in [RFC5737](https://datatracker.ietf.org/doc/html/rfc5737), [RFC3849](https://datatracker.ietf.org/doc/html/rfc3849) and [RFC9637](https://www.rfc-editor.org/rfc/rfc9637).

## Lab networks
* 192.0.2.0/24 TEST-NET-1
* 198.51.100.0/24 TEST-NET-2
* 3fff::/48

## Management networks
* 203.0.113.0/24 TEST-NET-3
* 2001:db8::/64

## Adressing Table
| Device  | Interface                    | IPv4 Address                                            | IPv4 Subnet Mask                                                         | IPv4 CIDR                 | Default Gateway    | Management IP                  |
|---------|------------------------------|---------------------------------------------------------|--------------------------------------------------------------------------|---------------------------|--------------------|--------------------------------|
| router1 | eth1<br>eth2<br>eth3         | 192.0.2.0<br>192.0.2.2<br>198.51.100.1                  | 255.255.255.254<br>255.255.255.254<br>255.255.255.240                    | /31<br>/31<br>/28         | -                  | 203.0.113.32<br>2001:db8::32   |
| router2 | eth1<br>eth2<br>eth3         | 192.0.2.1<br>192.0.2.4<br>198.51.100.17                 | 255.255.255.254<br>255.255.255.254<br>255.255.255.240                    | /31<br>/31<br>/28         | -                  | 203.0.113.33<br>2001:db8::33   |
| router3 | eth1<br>eth2<br>eth3<br>eth4 | 192.0.2.3<br>192.0.2.5<br>198.51.100.33<br>192.0.2.6    | 255.255.255.254<br>255.255.255.254<br>255.255.255.240<br>255.255.255.254 | /31<br>/31<br>/28 <br>/31 | -                  | 203.0.113.34<br>2001:db8::34   |
| router4 | eth1<br>eth2<br>eth3<br>eth4 | 192.0.2.8<br>192.0.2.10<br>198.51.100.49<br>192.0.2.7   | 255.255.255.254<br>255.255.255.254<br>255.255.255.240<br>255.255.255.254 | /31<br>/31<br>/28 <br>/31 | -                  | 203.0.113.35<br>2001:db8::35   |
| router5 | eth1<br>eth2<br>eth3         | 192.0.2.9<br>192.0.2.12<br>198.51.100.65                | 255.255.255.254<br>255.255.255.254<br>255.255.255.240                    | /31<br>/31<br>/28         | -                  | 203.0.113.36<br>2001:db8::36   |
| router6 | eth1<br>eth2<br>eth3<br>eth4 | 192.0.2.11<br>192.0.2.13<br>198.51.100.81<br>192.0.2.14 | 255.255.255.254<br>255.255.255.254<br>255.255.255.240<br>255.255.255.254 | /31<br>/31<br>/28 <br>/31 | -                  | 203.0.113.37<br>2001:db8::37   |
| router7 | eth1<br>eth2                 | 192.0.2.15<br>198.51.100.97                             | 255.255.255.254<br>255.255.255.240                                       | /31<br>/28                | -                  | 203.0.113.38<br>2001:db8::38   |
| pc1     | eth1                         | 198.51.100.9                                            | 255.255.255.240                                                          | /28                       | 203.0.113.1 (eth0) | 203.0.113.128<br>2001:db8::128 |
| pc2     | eth1                         | 198.51.100.25                                           | 255.255.255.240                                                          | /28                       | 203.0.113.1 (eth0) | 203.0.113.129<br>2001:db8::129 |
| pc3     | eth1                         | 198.51.100.41                                           | 255.255.255.240                                                          | /28                       | 203.0.113.1 (eth0) | 203.0.113.130<br>2001:db8::130 |
| pc4     | eth1                         | 198.51.100.57                                           | 255.255.255.240                                                          | /28                       | 203.0.113.1 (eth0) | 203.0.113.131<br>2001:db8::131 |
| pc5     | eth1                         | 198.51.100.73                                           | 255.255.255.240                                                          | /28                       | 203.0.113.1 (eth0) | 203.0.113.132<br>2001:db8::132 |
| pc6     | eth1                         | 198.51.100.89                                           | 255.255.255.240                                                          | /28                       | 203.0.113.1 (eth0) | 203.0.113.133<br>2001:db8::133 |
| pc7     | eth1                         | 198.51.100.105                                          | 255.255.255.240                                                          | /28                       | 203.0.113.1 (eth0) | 203.0.113.134<br>2001:db8::134 |

## Requirements

* Linux virtual machine
* Docker, Podman or
* [Containerlab](https://containerlab.dev/install/)

## Cheatsheet

### 🏗️ Spinup the topology, setting routes on the PC's and disable LLDP on the management networks on eth0
```
./run.sh
```

### 🗺️ Start a web server and give the URL with a given IP instead of 0.0.0.0
```
clab graph -s <ip>:50080
```

### 🧨 Destroy the whole topology
```
clab destroy
```
### 📈 Web user interface

* Grafana: http://203.0.113.63:3000
* Kibana: http://203.0.113.64:5601
* Elasticsearch: http://203.0.113.61:9200
