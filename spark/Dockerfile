FROM p7hb/docker-spark:2.1.1
LABEL vendor="pokemon-radar-go"                                                                                                \
	  maintainer_1="Ruben Vasallo <ollasav.nebur@gmail.com>"                                                                   \
      maintainer_2="David Sola <d.sola.03@gmail.com>"                              

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV LANG C.UTF-8

RUN `# Run apt-get update`                                                                                                   && \
apt-get update                                                                                                                  ;


RUN `# Install PIP`                                                                                                          && \
	apt-get -y install python-pip                                                                                            && \
	apt-get -y install python-dev                                                                                                ;

RUN pip install py4j ipython==5.4.1 numpy                                                                                        ;

RUN  echo "export SPARK_HOME=/usr/local/spark-2.1.1-bin-hadoop2.7/\nexport PYTHONPATH=$SPARK_HOME/python" >> ~/.bashrc           ;
ADD  load_spark_environment_variables.py $HOME/.ipython/profile_default/startup/load_spark_environment_variables.py


RUN `# System Timezone`                                                                                                      && \
    ln -sf /usr/share/zoneinfo/UTC /etc/localtime                                                                               ;