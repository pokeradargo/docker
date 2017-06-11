#!/usr/bin/env bash

########################################################################################################################
# Variables                                                                                                            #
########################################################################################################################
PRJ_NAME="pokemon-radar-go"

########################################################################################################################
# Colors                                                                                                               #
########################################################################################################################

red=$(tput setaf 1)
green=$(tput setaf 76)

########################################################################################################################
# Headers and Logging                                                                                                  #
########################################################################################################################

e_success() {
    printf "${green}✔ %s${reset}\n" "$@"
}

e_error() {
    printf "${red}✖ %s${reset}\n" "$@"
    return 1
}

e_color() {
    local  __color=$1
    printf "${!__color}%s${reset}" "$2"
}

########################################################################################################################
# Docker operations                                                                                                    #
########################################################################################################################

create_docker_network() {
    local __network_name=$1
    local __network_mask=$2
    local __subnet_option=""

    if [ -z "${__network_mask}" ];
    then
        __subnet_option="";
    else
        __subnet_option="--subnet=${__network_mask}";
    fi

    e_color blue "Creating network ${__network_name} "                                                              && \
    docker network create                                                                                              \
        --driver bridge                                                                                                \
        ${__subnet_option}                                                                                             \
        "${__network_name}"                                                                                            \
    && e_success || e_error                                                                                            ;
}

ensure_docker_network_existence() {
    local __network_name=$1
    local __network_mask=$2

    local __network_existence=`docker network ls -q -f "name=^"${__network_name}"$"`

    if [ -z "${__network_existence}" ];
    then
        create_docker_network "${__network_name}" "${__network_mask}"                                                  ;
    else
        `exit 0`                                                                                                       ;
    fi
}

create_docker_volume() {
    local __volume_name=$1

    e_color blue "Creating ${__volume_name} data volume "                                                           && \
    docker volume create "${__volume_name}" && e_success || e_error                                                    ;
}

ensure_docker_volume_existence() {
    local __volume_name=$1

    local __volume_existence=`docker volume ls -q -f "name=^"${__volume_name}"$"`

    if [ -z "${__volume_existence}" ];
    then
        create_docker_volume "${__volume_name}"                                                                        ;
    else
        `exit 0`                                                                                                       ;
    fi
}