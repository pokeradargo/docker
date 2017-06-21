#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "\e[1m\e[39m "                                                      && \
echo -e "\e[32m========================================\e[39m"              && \
echo -e "\e[32m= \e[34mBuilding MongoDB image:              \e[32m=\e[39m"  && \
echo -e "\e[32m========================================\e[39m \e[0m"        && \
docker build                                                                   \
    -t pokemon-radar-go/mongodb:1.0                                            \
    -t pokemon-radar-go/mongodb:latest                                         \
    ${SCRIPT_DIR}/mongodb  													   ;


echo -e "\e[1m\e[39m "                                                      && \
echo -e "\e[32m========================================\e[39m"              && \
echo -e "\e[32m= \e[34mBuilding PostgreSQL image:      \e[32m=\e[39m"       && \
echo -e "\e[32m========================================\e[39m \e[0m"        && \
docker build                                                                   \
    -t pokemon-radar-go/postgresql:1.0                                         \
    -t pokemon-radar-go/postgresql:latest                                      \
    ${SCRIPT_DIR}/postgresql                                                   ;


echo -e "\e[1m\e[39m "                                                      && \
echo -e "\e[32m========================================\e[39m"              && \
echo -e "\e[32m= \e[34mBuilding Spark image:           \e[32m=\e[39m"       && \
echo -e "\e[32m========================================\e[39m \e[0m"        && \
docker build                                                                   \
    -t pokemon-radar-go/spark:1.0                                              \
    -t pokemon-radar-go/spark:latest                                           \
    ${SCRIPT_DIR}/spark                                                        ;


echo -e "\e[1m\e[39m "                                                      && \
echo -e "\e[32m========================================\e[39m"              && \
echo -e "\e[32m= \e[34mBuilding R image:               \e[32m=\e[39m"       && \
echo -e "\e[32m========================================\e[39m \e[0m"        && \
docker build                                                                   \
    -t pokemon-radar-go/rbase:1.0                                              \
    -t pokemon-radar-go/rbase:latest                                           \
    ${SCRIPT_DIR}/rbase                                                        ;