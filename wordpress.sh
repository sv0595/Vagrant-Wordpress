# Установка Apache2
echo 'Установка Apache2'
apt-get install -y apache2 apache2-utils
 systemctl enable apache2
 systemctl start apache2
# Установка Mysql
echo 'Установка Mysql'
 apt-get install -y mysql-client mysql-server
 # Установка PHP
   apt-get install -y  php php-mysql php-dom
# Преднастройка WordPress
 systemctl restart apache2
 # Установка WordPress
echo 'Установка WordPress' 
echo 'скачивание архива'
cd /var
wget -c http://wordpress.org/latest.tar.gz
echo 'Распаковака архива'
tar -xzvf latest.tar.gz
echo 'Перекидывание архива'
echo 'Мишки убежали'
 rsync -av wordpress/* /var/www/html/
 chown -R www-data:www-data /var/www/html/
 chmod -R 755 /var/www/html/
 rm /var/www/html/index.html
 echo -e "192.168.33.10 NameServer">> /etc/hosts
 