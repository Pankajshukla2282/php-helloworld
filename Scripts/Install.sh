sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php.ini
sed -i -e 's/;listen.owner = nobody/listen.owner = nginx/g' /etc/php-fpm.d/www.conf
sed -i -e 's/;listen.group = nobody/listen.group = nginx/g' /etc/php-fpm.d/www.conf
sed -i -e 's/;listen.mode = 0666/listen.mode = 0666/g' /etc/php-fpm.d/www.conf
sed -i -e 's/user = apache/user = nginx/g' /etc/php-fpm.d/www.conf
sed -i -e 's/group = apache/group = nginx/g' /etc/php-fpm.d/www.conf
sed -i -e 's/listen = 127.0.0.1:9000/listen = \/var\/run\/php-fpm\/php-fpm.sock/g' /etc/php-fpm.d/www.conf
