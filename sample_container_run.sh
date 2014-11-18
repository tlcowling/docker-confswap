#!/bin/bash

docker run -e HOSTS=[5,6,7,8] -e COORDINATION_NODE=coordinate.special.mycorp.com -e DISCOMBOBULATION_RATE=10.432 -it tlcowling/confswap:latest
