FROM gitinsky/baseimage:0.1.9
MAINTAINER Git In Sky <support@gitinsky.com>

RUN \
  echo "deb https://packagecloud.io/grafana/stable/debian/ wheezy main" > /etc/apt/sources.list.d/packagecloud_io_grafana_stable_debian.list && \
  curl https://packagecloud.io/gpg.key | sudo apt-key add - && \
  apt-get update && apt-get install -y grafana && \
  mkdir /usr/share/grafana/data && echo {{ version.stdout }}

COPY start.sh /start.sh

CMD ["/start.sh"]
EXPOSE 3000
