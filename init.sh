#!/usr/bin/env bash
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn_1.conf /etc/gunicorn.d/test_1
sudo ln -sf /home/box/web/etc/gunicorn_2.conf /etc/gunicorn.d/test_2
sudo /etc/init.d/gunicorn restart
