#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#添加自定义插件链接
#sed -i "/uci commit fstab/a\uci commit network" $ZZZ
#sed -i "/uci commit network/i\uci set network.lan.ipaddr='192.168.11.1'" $ZZZ                      # IPv4 地址(openwrt后台地址)
#sed -i "/uci commit network/i\uci set network.lan.netmask='255.255.255.0'" $ZZZ                   # IPv4 子网掩码
#sed -i "/uci commit network/i\uci set network.lan.gateway='192.168.2.1'" $ZZZ                     # IPv4 网关
#sed -i "/uci commit network/i\uci set network.lan.broadcast='192.168.2.255'" $ZZZ                 # IPv4 广播
#sed -i "/uci commit network/i\uci set network.lan.dns='223.5.5.5 114.114.114.114'" $ZZZ           # DNS(多个DNS要用空格分开)
#sed -i "/uci commit network/i\uci set network.lan.delegate='0'" $ZZZ                              # 去掉LAN口使用内置的 IPv6 管理

rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题

#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile           # 选择argon为默认主题

#sed -i "s/OpenWrt /${Author} Compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ          # 增加个性名字${Author}默认为你的github账号

sed -i "/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-x86'" $ZZZ               # 修改主机名称为OpenWrt-123

#sed -i 's/PATCHVER:=4.14/PATCHVER:=4.19/g' target/linux/x86/Makefile                             # 默认内核为4.14，修改内核为4.19


# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 修改插件名字
#sed -i 's/"aMule设置"/"电驴下载"/g' `grep "aMule设置" -rl ./`
#sed -i 's/"网络存储"/"存储"/g' `grep "网络存储" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `grep "Turbo ACC 网络加速" -rl ./`
#sed -i 's/"实时流量监测"/"流量"/g' `grep "实时流量监测" -rl ./`
#sed -i 's/"KMS 服务器"/"KMS激活"/g' `grep "KMS 服务器" -rl ./`
#sed -i 's/"TTYD 终端"/"命令窗"/g' `grep "TTYD 终端" -rl ./`
sed -i 's/"USB 打印服务器"/"打印服务"/g' `grep "USB 打印服务器" -rl ./`
#sed -i 's/"Web 管理"/"Web"/g' `grep "Web 管理" -rl ./`
#sed -i 's/"管理权"/"改密码"/g' `grep "管理权" -rl ./`
#sed -i 's/"带宽监控"/"监控"/g' `grep "带宽监控" -rl ./`
sed -i 's/"Argon 主题设置"/"Argon设置"/g' `grep "Argon 主题设置" -rl ./`
