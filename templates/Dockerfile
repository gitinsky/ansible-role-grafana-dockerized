FROM gitinsky/baseimage:0.1.9
MAINTAINER Git In Sky <support@gitinsky.com>

RUN \
  cd / && apt-get update && apt-get install -y libfontconfig && \
  curl -s -o /grafana_latest_amd64.deb https://grafanarel.s3.amazonaws.com/builds/grafana_3.0.4-1464167696_amd64.deb && \
  dpkg -i /grafana_latest_amd64.deb && \
  mkdir /usr/share/grafana/data && \
  rm -f /grafana_latest_amd64.deb

COPY start.sh /start.sh

EXPOSE 3000

CMD ["/start.sh"]
