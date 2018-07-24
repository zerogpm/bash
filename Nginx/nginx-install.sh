wget https://nginx.org/download/nginx-1.14.0.tar.gz

if [[ "${?}" -eq 0 ]]
then
  echo "downloaded nginx successfully"
else
 echo "error downloading"
 exit 1
fi

echo "unzip files"

tar -zxvf nginx-1.14.0.tar.gz

if [[ "${?}" -eq 0 ]]
then
  echo "unzip files successfully"
else
 echo "error unzip"
 exit 1
fi

sudo apt-get install build-essential libpcre3 libpcre3-dev zlib1g-dev libssl-dev libgd-dev -y

nginx-1.14.0/configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid --with-http_ssl_module --with-http_image_filter_module=dynamic --modules-path=/etc/nginx/modules --with-http_v2_module

if [[ "${?}" -eq 0 ]]
then
  echo "install successfully"
else
 echo "error install nginx"
 exit 1
fi

exit 0
