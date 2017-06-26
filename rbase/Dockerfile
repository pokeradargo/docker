FROM r-base:3.4.0
LABEL vendor="pokemon-radar-go" \
	  maintainer_1="Ruben Vasallo <ollasav.nebur@gmail.com>" \
          maintainer_2="David Sola <d.sola.03@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV LANG C.UTF-8

RUN `# System Timezone` && \
    ln -sf /usr/share/zoneinfo/UTC /etc/localtime;

RUN `# Install dependencies` && \
    apt-get update && \
    apt-get install -y curl openssl libcurl4-openssl-dev libssl-dev;
