#!/bin/bash

ip=$1
dir=$2

#创建定义的文件
touch "$1.sh" 

echo "#!/bin/bash">>"$1.sh"
echo ". ./router.sh">>"$1.sh"
echo "echo ${ip}">>"$1.sh"
echo "if [ ! \$1 ]; then">>"$1.sh"
echo "ssh root@\${${ip}}">>"$1.sh"
echo "fi">>"$1.sh"

if [ $2 ]; then
	mv $1.sh ${dir}
fi