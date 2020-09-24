#Создание пользователя
echo 'Создание пользователя' 
useradd -s /bin/bash -p 'sPhU4/ynGrjDA' -m -b /home admin
#Добовление ключа SSH
mkdir /home/admin/.ssh
sudo cp /vagrant/id_rsa.pub /home/admin/.ssh/authorized_keys
sudo chown admin:admin /home/admin/.ssh/authorized_keys
sudo chown admin:admin /home/admin/.ssh
sudo chmod 700 /home/admin/.ssh
sudo chmod 700 /home/admin/.ssh/authorized_keys
echo 'Создана учетная запись admin пароль - 1234'
echo 'Устновите: vagrant plugin install vagrant-scp' 

