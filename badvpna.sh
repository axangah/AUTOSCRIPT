cd /usr/bin && wget https://github.com/axangah/AUTOSCRIPT/blob/master/badvpn-udpgw?raw=true && wget https://raw.githubusercontent.com/axangah/AUTOSCRIPT/master/rc.local && cp -f rc.local /etc/rc.local && rm -f badvpna.sh && badvpn-udpgw --listen-addr 127.0.0.1:7300 > /dev/nul &
