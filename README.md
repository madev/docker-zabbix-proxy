# Run zabbix-proxy and monitor ssl-certificates
In this project we build and run zabbix-proxy container, which monitors the ssl certificate on the chosen web.

### Building the image
docker build -t zabbix-proxy .

### Starting the container
docker run --env ZBX_HOSTNAME={hostname of your proxy} --env ZBX_SERVER_HOST={domain-name/ip-address of your zabbix-server} zabbix-proxy

## Warning
If proxy shows error in external check, make sure to change the ending of lines in 'ssl-script.sh' from CRLF to LF