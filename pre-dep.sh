sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php.ini
sed -i 's/;listen.owner = nobody/listen.owner = nginx/g' /etc/php-fpm.d/www.conf
sed -i 's/;listen.group = nobody/listen.group = nginx/g' /etc/php-fpm.d/www.conf
sed -i 's/;listen.mode = 0666/listen.mode = 0666/g' /etc/php-fpm.d/www.conf
sed -i 's/user = apache/user = nginx/g' /etc/php-fpm.d/www.conf
sed -i 's/group = apache/group = nginx/g' /etc/php-fpm.d/www.conf

sed -i 's/listen = 127.0.0.1:9000/listen = `/var/run/php-fpm/php-fpm.sock`/g' /etc/php-fpm.d/www.conf