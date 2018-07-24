#!/bin/bash
#must be inside nginx folder ex: nginx-1.14.0/

./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid --with-http_ssl_module --with-http_image_filter_module=dynamic --modules-path=/etc/nginx/modules --with-http_v2_module

if [[ "${?}" -eq 0 ]]
then
  echo "install successfully"
else
 echo "error install nginx"
 exit 1
fi

make

if [[ "${?}" -eq 0 ]]
then
  echo "make successfully"
else
 echo "error make"
 exit 1
fi

sudo make install

if [[ "${?}" -eq 0 ]]
then
  echo "make install  successfully"
else
 echo "error make install"
 exit 1
fi

sudo nginx

if [[ "${?}" -eq 0 ]]
then
  echo "nginx start successfully"
else
 echo "nginx start error"
 exit 1
fi


exit 0
