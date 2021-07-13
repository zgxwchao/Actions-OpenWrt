#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone https://github.com/281677160/openwrt-package package/danshui
#git clone https://github.com/sirpdboy/luci-theme-opentopd package/luci-theme-opentopd
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus
git clone https://github.com/MeIsReallyBa/k2p-openwrt-mt7615_5.0.2.0 package/k2p-openwrt-mt7615_5.0.2.0
git clone https://github.com/rosywrt/luci-theme-rosy package/luci-theme-rosy
