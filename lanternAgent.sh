#!/bin/sh
# 蓝灯没有 ios 客户端, 所以使用 mac 运行, 然后 ios 设置代理翻墙
#localIp=`ifconfig en0 | egrep 'inet\b' | awk '{print $2}'`
localIp=`getIp.sh`
echo $localIp
/Applications/Lantern.app/Contents/MacOS/lantern -addr "$localIp:8787" # 端口号可以配置
