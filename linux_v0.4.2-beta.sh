#!/bin/bash

#软件版本
echo "当前版本为:v0.4.2"

#空格
echo " "
echo " "
echo " "
echo " "
echo " "


#更新
echo " "
echo "是否更新apt软件包？(y/n)"
read -p " " -n 1 update_answer

if [ "$update_answer" == "y" ]; then
  sudo apt-get update
  sudo pacman -Syu
else
  echo "不更新apt软件包"
fi

#安装
sudo apt-get install screenfetch

#隔空
echo " "
echo " "
echo " "
echo " "
echo " "

# 获取操作系统信息
OS_INFO=$(lsb_release -a)
echo "Linux操作系统信息:$OS_INFO"

# 获取内核信息
KERNEL_INFO=$(uname -a)
echo "Linux内核信息:$KERNEL_INFO"

# 获取计算机名称
COMPUTER_NAME=$(hostname)
echo "Linux计算机名称:$COMPUTER_NAME"

# 获取用户名
USERNAME=$(whoami)
echo "当前用户名:$USERNAME"

# 获取系统时间
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)
echo "系统时间:"
echo "日期: $DATE"
echo "时间: $TIME"

# 获取CPU信息
cpu_info=$(cat /proc/cpuinfo | grep "model name" | head -n 1)
echo "CPU信息: $cpu_info"

# 获取内存信息
mem_info=$(free -h | grep Mem | awk '{print $2}')
echo "内存大小: $mem_info"

# 获取存储信息
storage_info=$(df -h / | grep / | awk '{print $2}')
echo "储存空间: $storage_info"

#空格
echo " "
echo " "
echo " "
echo " "
echo " "

# 判断系统是否为CentOS系统
if grep -q "CentOS" /etc/redhat-release; then
   echo "这是CentOS,无法完整执行"
   echo "感谢您的使用"
   echo " "
   exit
else
   echo "这不是CentOS,可以完整执行"
   echo " "
   screenfetch
fi

#空格
echo " "
echo " "
echo " "
echo " "
echo " "

#结束执行
echo "感谢您的使用"
exit