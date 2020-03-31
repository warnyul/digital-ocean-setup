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

# License

    Copyright 2020 Balázs Varga

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
