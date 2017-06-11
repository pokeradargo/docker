#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"

source "${SCRIPT_DIR}/bash_lib.sh"

docker-compose -f $SCRIPT_DIR/docker-compose.yml stop                                                               || \
e_error "Please execute ./docker/build_containers.sh before executing this action"                                     ;