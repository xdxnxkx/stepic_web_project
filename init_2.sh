#!/usr/bin/env bash
sudo ln -sf /home/daniil/Documents/py_coding/stepic_project/etc/nginx.conf /etc/nginx/conf.t/test.conf
sudo nginx -s reload
cd
sudo ln -sf /home/box/web/etc/gunicorn_wsgi.py /etc/gunicorn.d/test_2
sudo /etc/init.d/gunicorn restart
sudo service mysqld restart
mysql -u root -e "CREATE DATABASE db_stepic;"
mysql -u root -e "CREATE USER 'xdxnxkx'@'localhost' IDENTIFIED BY 'Lyr-00003' PASSWORD EXPIRE;"
mysql -u root -e "GRANT ALL ON db_stepic.* TO 'xdxnxkx'@'localhost';"