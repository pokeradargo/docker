#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Download Mongo DB image
echo -e "\e[1m\e[39m "                                                      && \
echo -e "\e[32m========================================\e[39m"              && \
echo -e "\e[32m= \e[34mBuilding MongoDB image:              \e[32m=\e[39m"  && \
echo -e "\e[32m========================================\e[39m \e[0m"        && \
docker build                                                                   \
    -t pokemon-radar-go/mongodb:1.0                                            \
    -t pokemon-radar-go/mongodb:latest                                         \
    ${SCRIPT_DIR}/mongodb  													   ;