#!/bin/bash

# Instala Docker
apt-get update
apt-get install -y docker.io
usermod -aG docker vagrant

# Aguarda o token do Swarm
while [ ! -f /vagrant/swarm_token.txt ]; do
  sleep 5
done

# Faz join ao cluster
JOIN_CMD=$(grep 'docker swarm join' /vagrant/swarm_token.txt)
$JOIN_CMD
