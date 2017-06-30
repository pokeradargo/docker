FROM ubuntu:16.04
LABEL maintainer_1="Rubén Vasallo <ruben@vasallo.nom.es>" \
      maintainer_2="David Sola <d.sola.03@gmail.com>"

# Global environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV LANG C.UTF-8

RUN `# Install some dependencies`                                                && \
    apt-get update && \
    apt-get install -y \
      vim \
      git \
      wget \
      curl ;

RUN `# Add NGINX repository`                                                && \
    echo "deb http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list      && \
    echo "deb-src http://nginx.org/packages/ubuntu/ trusty nginx" >> /etc/apt/sources.list  && \
    wget -qO- http://nginx.org/keys/nginx_signing.key | apt-key add -       && \
    `# `                                                                    && \
    `# Install Nginx`                                                       && \
    apt-get install -y nginx-extras=1.10.*                                     ;

ADD nginx.conf /etc/nginx/nginx.conf
ADD maps.conf /etc/nginx/sites-enabled/maps.conf

RUN `# Installing NodeJS`                                                   && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash -                  && \
    apt-get install -y                                                         \
        build-essential                                                        \
        nodejs                                                              && \
    `# `                                                                    && \
    `# Installing YarnPkg`                                                  && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -       && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main"                      \
        | tee /etc/apt/sources.list.d/yarn.list                             && \
    apt-get update                                                          && \
    apt-get install -y yarn                                                 && \
    `# `                                                                    && \
    `# Install Bower & Gulp`                                                && \
    npm -g install bower gulp gulp-cli                                         ;


RUN `# Download and build project` && \
    git clone https://github.com/pokeradargo/map.git /data && \
    cd /data && \
    bower --allow-root install ;

EXPOSE 80 443
CMD ["nginx"]

## To build

# docker build -t=pokeradargo-frontend --force-rm .

## To run
# docker run -d -p 10080:80 --name pokeradargo-frontend -h pokeradargo-frontend pokeradargo-frontend
