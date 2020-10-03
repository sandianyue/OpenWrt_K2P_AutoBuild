#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: OFFICIAL_OP.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git pass https://github.com/huchanghui123/Lienol-openwrt-packages-backup' feeds.conf.default
sed -i '$a src-git X https://github.com/x-wrt/com.x-wrt' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git lean https://github.com/coolsnowwolf/lede/' feeds.conf.default
#git clone https://github.com/MeIsReallyBa/x-wrt/tree/master/target
