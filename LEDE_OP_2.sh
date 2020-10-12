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
sed -i 's/192.168...1/192.168.2.1/g' package/base-files/files/bin/config_generate
sed -i 's/zh-cn is not set/zh-cn=y/g' .config
#sed -i 's/libmbedtls/libopenssl/g'  feeds/packages/net/shadowsocks-libev/Makefile
#sed -i 's/libmbedtls/libopenssl/g'  feeds/pass/lienol/luci-app-passwall/Makefile
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
ls -d `pwd`/package/lean/luci-app-*/po/zh-cn | xargs -L 1 -n 1 -i sh -c "ln -s {} \$(dirname {})/zh-Hans"
ls -d `pwd`/package/feeds/*/luci-app-*/po/zh-cn | xargs -L 1 -n 1 -i sh -c "ln -s {} \$(dirname {})/zh-Hans"
