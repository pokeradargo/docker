#!/usr/bin/env bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"

source "${SCRIPT_DIR}/bash_lib.sh"

ensure_docker_network_existence "${PRJ_NAME}-network"                                                               && \
ensure_docker_volume_existence "${PRJ_NAME}-mongodb-input-data"                                                     && \
docker-compose -f "${SCRIPT_DIR}/docker-compose.yml" up --no-build --force-recreate -d                                 ;