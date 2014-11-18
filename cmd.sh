#!/bin/bash

confswap --output=/config/config_from_dockerfile2.yaml /config/config_example.yaml.template

echo 'config from env variables in Dockerfile'
cat /config/config_from_dockerfile.yaml

echo 'config from env variables from runtime'
cat /config/config_from_dockerfile2.yaml
