FROM zabbix/zabbix-proxy-sqlite3:6.2-ubuntu-latest
USER root
RUN apt-get update -y
RUN apt-get install -y openssl
COPY scripts/ssl-cert-script.sh /usr/lib/zabbix/externalscripts
RUN chmod +x /usr/lib/zabbix/externalscripts/ssl-cert-script.sh
USER zabbix