FROM debian:9-slim
MAINTAINER Git In Sky <support@gitinsky.com>

RUN \
  cd / && apt-get update && apt-get install -y curl libfontconfig && \
  curl -s -o /grafana_latest_amd64.deb https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_5.1.0_amd64.deb && \
  dpkg -i /grafana_latest_amd64.deb && \
  mkdir /usr/share/grafana/data && \
  rm -f /grafana_latest_amd64.deb

COPY start.sh /start.sh

EXPOSE 3000

CMD ["/start.sh"]
