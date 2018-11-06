#/bin/bash

. ./properties.sh

start()
{
  cd /home/project/${project_folder}/
  nohup java -jar ${project_name}*.jar &
}

stop()
{
  ps -ef | grep java | grep ${project_name} | cut -c 9-15 | xargs kill -9
}

delete_source()
{
  cd /home/project
  rm -rf ${project_folder}*
}

case $1 in
  start)
    start
  ;;
  stop)
    stop
  ;;
  del)
    delete_source
  ;;
  restart)
    stop
    start
  ;;
esac




