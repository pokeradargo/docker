FROM mongo:3.4
LABEL vendor="pokemon-radar-go"                                                 \
	  maintainer_1="Ruben Vasallo <ollasav.nebur@gmail.com>"                    \
      maintainer_2="David Sola <d.sola.03@gmail.com>"                              

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm-256color
ENV LANG C.UTF-8

RUN `# System Timezone`                                                     && \
    ln -sf /usr/share/zoneinfo/UTC /etc/localtime                              ;
