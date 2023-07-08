source : https:#www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04
# Set Up MySQL Server 

sudo apt update

sudo apt install mysql-server

sudo systemctl start mysql

# Step Create user mysql root account
mysql -u root -p

# % accept all connection
CREATE USER 'sammy'@'%' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON *.* TO 'sammy'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

# see port mysql running
netstat -tnlp | grep mysql

# Change settings for acc conn mysql remote
nano /etc/mysql/mysql.conf.d/mysqld.cnf

#Change the bind-address value from 127.0.0.1 to 0.0.0.0 as shown below:
bind-address = 0.0.0.0

sudo systemctl restart mysql

# finish u can access mysql with ip server and port by account sammy
