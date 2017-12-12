FROM gitinsky/baseimage:0.2.1
MAINTAINER Git In Sky <support@gitinsky.com>

RUN \
  cd / && apt-get update && apt-get install -y libfontconfig && \
  curl -s -o /grafana_latest_amd64.deb https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_4.6.2_amd64.deb && \
  dpkg -i /grafana_latest_amd64.deb && \
  mkdir /usr/share/grafana/data && \
  rm -f /grafana_latest_amd64.deb

COPY start.sh /start.sh

EXPOSE 3000

CMD ["/start.sh"]
