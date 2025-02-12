FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends asterisk && apt-get clean && rm -rf /var/lib/apt/lists/*

ADD etc/asterisk/manager.conf /etc/asterisk/manager.conf
ADD etc/asterisk/manager.d/ami.conf /etc/asterisk/manager.d/ami.conf
ADD etc/asterisk/http.conf /etc/asterisk/http.conf
ADD etc/asterisk/ari.conf /etc/asterisk/ari.conf

CMD ["asterisk", "-f"]
