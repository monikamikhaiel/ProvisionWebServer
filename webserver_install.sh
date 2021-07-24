#insatll ngnix
sudo apt update
sudo apt install nginx -y
sudo service nginx enable
sudo service nginx start

echo "ngnix installation done"
sudo su 
sudo mkdir -p /var/www/html
# copy the index.html in the folder specific for ngnix  
sudo cp -r /vm/code/index.html  /var/www/html/.

echo "website file done"
## the configuration file for the nginx
cd /etc/nginx/sites-enabled

sudo cp -r /vm/code/nginx-config-port.sh /etc/nginx/sites-enabled/test_web

echo "ngnix configuration done"
sudo service nginx restart

sudo su vagrant

