#!/bin/bash

set -e

echo "[!] Creating virtual environment"
rm -rf venv
virtualenv -v venv
source venv/bin/activate
pip install -r requirements.txt

echo "[!] Creating target"
docker rm findwall_target --force
docker run --cap-add=NET_ADMIN --name findwall_target --publish-all -d ghcr.io/s1ntaxe770r/image:latest
docker exec -t findwall_target apt install -y netcat iptables

echo "[!] Adding firewall rules to target"
docker exec -t findwall_target iptables -A INPUT -p tcp --destination-port 8001 -j DROP
docker exec -t findwall_target iptables -A INPUT -p tcp --destination-port 8005 -j DROP
docker exec -t findwall_target iptables -A INPUT -p udp --destination-port 8002 -j DROP

echo "[!] TCP scan"
python findwall.py --ssh-host $(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' findwall_target) --ssh-port 22 --ssh-username test --ssh-password test --ports 8000-8010 --threads 3

echo "[!] UDP scan"
python findwall.py --ssh-host $(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' findwall_target) --ssh-port 22 --ssh-username test --ssh-password test --ports 8000-8010 --udp --threads 3

echo "[!] Clean-up"
docker rm findwall_target --force
deactivate