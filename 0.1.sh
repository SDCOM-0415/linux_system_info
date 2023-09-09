#!/bin/bash

#更新
sudo yum update
sudo apt-get update
sudo pacman -Syu

#安装
sudo yum install screenfetch
sudo apt-get install screenfetch
sudo pacman -S screenfetch

#隔空
echo " "
echo " "
echo " "

# 获取操作系统信息
OS_INFO=$(lsb_release -a)
echo "操作系统信息:"
echo "$OS_INFO"

# 获取内核信息
KERNEL_INFO=$(uname -a)
echo "内核信息:"
echo "$KERNEL_INFO"

# 获取计算机名称
COMPUTER_NAME=$(hostname)
echo "计算机名称:"
echo "$COMPUTER_NAME"

# 获取用户名
USERNAME=$(whoami)
echo "用户名:"
echo "$USERNAME"

# 获取系统时间
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)
echo "系统时间:"
echo "Date: $DATE"
echo "Time: $TIME"

# 使用screenfetch查看系统信息
screenfetch
