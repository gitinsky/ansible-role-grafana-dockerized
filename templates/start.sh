#!/bin/bash
cd /usr/share/grafana
exec grafana-server --config=/etc/grafana/grafana.ini
