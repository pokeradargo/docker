FROM p7hb/docker-spark:2.1.1
LABEL vendor="pokemon-radar-go"                                                 \
	  maintainer_1="Ruben Vasallo <ollasav.nebur@gmail.com>"                    \
      maintainer_2="David Sola <d.sola.03@gmail.com>"                              

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV LANG C.UTF-8

RUN `# Run apt-get update`                                                   && \
apt-get update                                                                  ;


RUN `# Install PIP`                                                         && \
	apt-get -y install python-pip                                              ;

RUN pip install py4j                                                            ;

RUN  echo "export SPARK_HOME=/opt/spark\n export PYTHONPATH=$SPARK_HOME/python" >> ~/.bashrc                         ;
ADD  load_spark_environment_variables.py ~/.ipython/profile_default/startup/load_spark_environment_variables.py


RUN `# System Timezone`                                                     && \
    ln -sf /usr/share/zoneinfo/UTC /etc/localtime                              ;