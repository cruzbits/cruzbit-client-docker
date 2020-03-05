# Cruzbit client Docker

- [Cruzbit client Docker](#cruzbit-client-docker)
  - [Introduction](#introduction)
  - [TLDR](#tldr)
  - [Pre-requisites](#pre-requisites)
  - [Usage](#usage)
    - [Run the cruzbit-client-docker container](#run-the-cruzbit-client-docker-container)
      - [Docker options](#docker-options)
      - [Cruzbit client options](#cruzbit-client-options)
    - [Get a bash shell inside a running cruzbit-client-docker container](#get-a-bash-shell-inside-a-running-cruzbit-client-docker-container)
    - [Stop the cruzbit-client-docker container](#stop-the-cruzbit-client-docker-container)
    - [Remove the cruzbit-client-docker container](#remove-the-cruzbit-client-docker-container)
    - [Remove the cruzbit-client-docker container image](#remove-the-cruzbit-client-docker-container-image)
    - [Check the cruzbit-client-docker container logs](#check-the-cruzbit-client-docker-container-logs)
    - [Update the cruzbit-client-docker container image](#update-the-cruzbit-client-docker-container-image)
  - [License](#license)

## Introduction
Cruzbit is a simple decentralized peer-to-peer ledger implementation https://cruzb.it

This is a [dockerized](http://docker.io) installation of the [Cruzbit client](https://github.com/cruzbit/cruzbit/tree/master/client)

It is suitable for use as a local peer (default configuration), or for mining

Available from [Dockerhub](https://hub.docker.com/r/cruzbit/cruzbit-client-docker)

## TLDR
* Start a non-mining node accessible on port tcp/8831

  `docker run --name cruzbit-client-docker -d -p 8831:8831 cruzbit/cruzbit-client-docker`

* Start a mining node
  
  `docker run --name cruzbit-client-docker -d cruzbit/cruzbit-client-docker -datadir /cruzbit -pubkey <base64 encoded public key>`

* Start a mining node with 4 miners
  
  `docker run --name cruzbit-client-docker -d cruzbit/cruzbit-client-docker -datadir /cruzbit -numminers 4 -pubkey <base64 encoded public key>`

## Pre-requisites
Your system must have [Docker](http://docker.io) installed

## Usage
### Run the cruzbit-client-docker container
`docker run <docker options> cruzbit/cruzbit-client-docker <cruzbit client options>`

#### Docker options
`docker run --help`

#### Cruzbit client options
`docker run --rm cruzbit/cruzbit-client-docker -help`

### Get a bash shell inside a running cruzbit-client-docker container
`docker exec -it cruzbit-client-docker bash`
### Stop the cruzbit-client-docker container
`docker stop cruzbit-client-docker`
### Remove the cruzbit-client-docker container
`docker rm cruzbit-client-docker`
### Remove the cruzbit-client-docker container image
`docker rmi cruzbit/cruzbit-client-docker`
### Check the cruzbit-client-docker container logs
`docker logs cruzbit-client-docker`
### Update the cruzbit-client-docker container image
`docker pull cruzbit/cruzbit-client-docker`

`docker restart cruzbit-client-docker`

## License
cruzbit-client-docker is released under the terms of the MIT license. See LICENSE for more information or see https://opensource.org/licenses/MIT.
