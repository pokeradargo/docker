FROM postgres:9.6.3
LABEL vendor="pokemon-radar-go"                                                                                    \
	  maintainer_1="Ruben Vasallo <ollasav.nebur@gmail.com>"                                                       \
      maintainer_2="David Sola <d.sola.03@gmail.com>"                              

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV LANG C.UTF-8


RUN `# Run apt-get update`                                                                                      && \
    apt-get update                                                                                                 ;

RUN `# Install Wget`																		                    && \
	 apt-get install -y wget                                                                                       ;

# http://trac.osgeo.org/postgis/wiki/UsersWikiPostGIS23UbuntuPGSQL96Apt
RUN `# Post GIS installation`                                                                                  && \
    sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt xenial-pgdg main" >> /etc/apt/sources.list'       && \
    wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add - && \
    apt-get -y update                                                                                          && \
	apt install -y postgis postgresql-9.6-postgis-2.3 postgresql-contrib-9.6                                      ;

RUN `# System Timezone`                                                                                        && \
    ln -sf /usr/share/zoneinfo/UTC /etc/localtime                                                                 ;
