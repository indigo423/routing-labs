#!/usr/bin/env bash
# Maybe it's time for Batfish :)
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

checkError() {
  if [[ "${1}" -eq 0 ]]; then
    echo -e "${GREEN} ✔ ${ENDCOLOR}"
  else
    echo -e "${RED} ✖ ${ENDCOLOR}"
  fi
}

echo ""
echo "### Check reachability from PC1 (198.51.100.9/28)"
echo ""
echo -n " - Test gateway 198.51.100.1:                    "
docker exec -it clab-lab-01-pc1 ping -W 0.5 -c 1 198.51.100.1 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC2 (198.51.100.25/28):  "
docker exec -it clab-lab-01-pc1 ping -W 0.5 -c 1 198.51.100.25 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC3 (198.51.100.41/28):  "
docker exec -it clab-lab-01-pc1 ping -W 0.5 -c 1 198.51.100.41 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC4 (198.51.100.57/28):  "
docker exec -it clab-lab-01-pc1 ping -W 0.5 -c 1 198.51.100.57 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC5 (198.51.100.73/28):  "
docker exec -it clab-lab-01-pc1 ping -W 0.5 -c 1 198.51.100.73 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC6 (198.51.100.89/28):  "
docker exec -it clab-lab-01-pc1 ping -W 0.5 -c 1 198.51.100.89 2>&1 > /dev/null
checkError "${?}"
echo -n " - Test connectivity to PC7 (198.51.100.105/28): "
docker exec -it clab-lab-01-pc1 ping -W 0.5 -c 1 198.51.100.105 2>&1 > /dev/null
checkError "${?}"
