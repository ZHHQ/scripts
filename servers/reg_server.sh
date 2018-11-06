#!/bin/bash


#1.输入必要参数
#1.1 输入服务器ip
echo "请输入服务器ip:"
read ip
#1.2 输入服务器别名
echo "请输入服务器别名:"
read alias
#1.3 输入脚本目标文件夹
echo "请输入脚本目标文件夹:"
read dir

#2.将public key上传到目标服务器,开启免登录权限
. util/sendkey.sh ${ip}

#3.创建对应的服务器ip管理脚本
echo "${alias}='${ip}'">>"${dir}/router.sh"

#4创建快捷启动脚本
. util/create_login.sh ${alias} ${dir}

chmod 755 ${dir}/*

echo "Success"
