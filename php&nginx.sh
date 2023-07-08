source : https://linux.how2shout.com/set-up-nginx-as-a-reverse-proxy-for-apache-on-ubuntu-22-04/

// var -> {version}
sudo apt install php{version}

php -v 

# switch php version if u more php version
sudo update-alternatives --config php

# Settings apache for nginx
sudo apt install apache2

# Find and Change port 80 to 8000
sudo nano /etc/apache2/ports.conf
sudo nano /etc/apache2/sites-enabled/000-default.conf

systemctl restart apache2

# Test Apache is working on the new port on ur browser

sudo apt install nginx

cd /etc/nginx/sites-enabled/

sudo mv default /opt

sudo nano default

# server {
#     listen 80 default_server;
#     index index.php index.html index.htm;
#     location / {
#         proxy_pass http://localhost:8000;
#         proxy_set_header Host $http_host;
#         proxy_set_header X-Real-IP $remote_addr;
#         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
#         proxy_set_header X-Forwarded-Proto $scheme;
#     }
# }

sudo nginx -t

sudo systemctl restart nginx
