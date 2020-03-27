# Digital Ocean setup scripts

This repository contains scripts for setup a droplet on Digital Ocean.

# How to use

## [protect_docker.sh](./protect_docker.sh)

First, make a dir for server certificates:

```mkdir -p /var/docker```

Thereafter, copy (ca,server,key).pem files to `/var/docker` folder. I usually generate them with [Vault](https://www.vaultproject.io).

Finally, run the setup script:

```./protect_docker.sh```
