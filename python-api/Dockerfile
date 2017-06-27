FROM python:3.6.1
LABEL maintainer_1="Rubén Vasallo <ruben@vasallo.nom.es>" \
      maintainer_2="David Sola <d.sola.03@gmail.com>"

ENV TERM xterm-256color
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

#Configure TimeZone
RUN ln -sf /usr/share/zoneinfo/Europe/Madrid /etc/localtime

# Clone project
RUN git clone https://github.com/pokeradargo/api.git /data

# Install dependencies
RUN	cd /data/ && \
	python setup.py install

WORKDIR /data/

CMD ["FLASK_APP=App/index.py", "flask", "run"]
