echo ' '
echo "  
 _____                                _   _      _
|  ___|_ ___      _______   _  __ _  | \ | | ___| |_
| |_ / _` \ \ /\ / /_  / | | |/ _` | |  \| |/ _ \ __|
|  _| (_| |\ V  V / / /| |_| | (_| |_| |\  |  __/ |_
|_|  \__,_| \_/\_/ /___|\__, |\__,_(_)_| \_|\___|\__|
                        |___/
 "

echo " Script Auto Install VPS Untuk Server SSH "
echo " ================ Loading 100% ====================="

wget https://github.com/axangah/AUTOSCRIPT/blob/master/autoinstall.sh && sh autoinstall.sh && wget https://github.com/axangah/AUTOSCRIPT/blob/master/bannerssh.txt && chmod +x bannerssh.txt && wget https://github.com/axangah/AUTOSCRIPT/blob/master/badvpna.sh && sh badvpna.sh && yum -y install squid && sed -i 's/#cache_dir/cache_dir/g' /etc/squid/squid.conf && wget https://github.com/axangah/AUTOSCRIPT/blob/master/squid.conf && cp --force squid.conf /etc/squid/squid.conf && squid -f /etc/squid/squid.conf -z && squid -f /etc/squid/squid.conf -z && chkconfig squid on && service squid stop && service sshd restart && service dropbear restart && wget https://github.com/axangah/AUTOSCRIPT/blob/master/login && wget https://github.com/axangah/AUTOSCRIPT/blob/master/test.py && yum -y install figlet && yum -y install vixie-cron && chkconfig crond on && service crond restart && wget https://github.com/axangah/AUTOSCRIPT/blob/master/autoexpire.sh && chmod +x autoexpire.sh && wget https://github.com/axangah/AUTOSCRIPT/blob/master/ssh && sh ssh && chkconfig crond on && https://github.com/axangah/AUTOSCRIPT/blob/master/refresh &&

yum -y install httpd && rm /etc/httpd/conf/httpd.conf && cd /etc/httpd/conf && https://github.com/axangah/AUTOSCRIPT/blob/master/httpd.conf && cd && service httpd restart && chkconfig httpd on && cd /var/www/html && wget fawzya.net/repo/index.html && cd &&

yum -y install vnstat && vnstat -u -i venet0 && vnstat -i eth0 && sed -i 's/eth0/venet0/g' /etc/sysconfig/vnstat && echo "MAILTO=root" > /etc/cron.d/vnstat && echo "*/5 * * * * root /usr/sbin/vnstat.cron" >> /etc/cron.d/vnstat && rm /etc/vnstat.conf && cd /etc && wget fawzya.net/repo/vnstat.conf && cd && figlet Berhasil !!!
