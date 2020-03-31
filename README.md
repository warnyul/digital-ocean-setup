# Digital Ocean setup scripts

This repository contains scripts for setup a droplet on Digital Ocean.

# How to use

## [protect_docker.sh](./protect_docker.sh)

This script useful, if you want to protect your Daemon socket with Mutual Authentication.

First, make a dir for server certificates:

```mkdir -p /var/docker```

Thereafter, copy (ca,cert,key).pem files to `/var/docker` folder. I usually generate them with [Vault](https://www.vaultproject.io). However you can do it manually too, read the offical documentation here: [Protect the Docker daemon socker](https://docs.docker.com/engine/security/https/)

Finally, run the setup script:

```./protect_docker.sh```
