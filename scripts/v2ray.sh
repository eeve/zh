#!/bin/sh

# 安装可执行文件和 .dat 数据文件
bash -c "$(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)"

# 只更新 .dat 数据文件
# bash -c "$(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-dat-release.sh)"

# 复制配置文件到系统
cp -a ./files/v2ray.config.json /usr/local/etc/v2ray/config.json

# 启动服务
systemctl start v2ray

# 查看服务状态
systemctl status v2ray