#!/usr/bin/env bash
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn_help.py /etc/gunicorn.d/test_1
sudo ln -sf /home/box/web/etc/gunicorn_wsgi.py /etc/gunicorn.d/test_2
sudo /etc/init.d/gunicorn restart
sudo service mysqld start
mysql -u root -e "CREATE DATABASE db_stepic;"
mysql -u root -e "CREATE USER 'xdxnxkx'@'localhost' IDENTIFIED BY 'dnk-00003' PASSWORD EXPIRE;"

