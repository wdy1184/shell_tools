#!/usr/bin/expect

# 我司需要登录堡垒机然后登录对应的机器, 我使用 expect 能直接登录到相应机器, 可以配合 tmux 使用, 效率更佳

# 登录堡垒机
spawn ssh [your user name]@[your ip address]
expect "*[your user name]*"

# 登录对应的机器
send "ssh [your user name]@[your ip address]\r"
expect "*password*"
send "123456\r"
expect "*$*"

# 切换到对应的目录
send "cd /data/www/\r"
interact
