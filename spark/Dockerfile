FROM sequenceiq/spark:1.6.0
LABEL vendor="pokemon-radar-go"                                                 \
	  maintainer_1="Ruben Vasallo <ollasav.nebur@gmail.com>"                    \
      maintainer_2="David Sola <d.sola.03@gmail.com>"                              

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV LANG C.UTF-8

ARG SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"
ARG EXPORT_VARIABLES_FILE="${SCRIPT_DIR}/export_variables.sh"
ARG LOAD_ENVIRONMENT_VARIABLES="${SCRIPT_DIR}/load_spark_environment_variables.py"

RUN `# Run apt-get update`                                                  && \
    apt-get update                                                             ;

RUN `# Install PIP`                                                         && \
	apt-get -y install python-pip                                              ;

RUN pip install py4j                                                        && \
	cat "${EXPORT_VARIABLES_FILE}" >> ~/.bashrc                             && \
	cat "${LOAD_ENVIRONMENT_VARIABLES" > ~/.ipython/profile_default/startup/load_spark_environment_variables.py ;


RUN `# System Timezone`                                                     && \
    ln -sf /usr/share/zoneinfo/UTC /etc/localtime                              ;