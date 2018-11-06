#/bin/bash

start()
{
  /usr/local/nginx/sbin/nginx -c /home/config/nginx.conf
  echo "nginx started"
}

stop()
{
  /usr/local/nginx/sbin/nginx -s stop
  echo "nginx stop"
}

case $1 in
  start)
    start
  ;;
  stop)
    stop
  ;;
  restart)
    stop
    start 
  ;;
esac
