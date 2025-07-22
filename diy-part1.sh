#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# Mypackge
sed -i '$a src-git openwrt-package https://github.com/281677160/openwrt-package.git' >>feeds.conf.default
#sed -i '$a src-git packges https://github.com/Myoko/openwrt-packages.git' feeds.conf.default
#sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' feeds.conf.default
#sed -i '$a src-git neobird https://github.com/thinktip/luci-theme-neobird.git' feeds.conf.default
git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
git clone https://github.com/nikkinikki-org/OpenWrt-nikki package/luci-app-nikki
git clone https://github.com/vernesong/OpenClash package/luci-app-openclash
git clone https://github.com/thinktip/luci-theme-neobird package/luci-theme-neobird
#git clone https://github.com/kiddin9/luci-theme-edge package/luci-theme-edge
#git clone https://github.com/kiddin9/luci-app-dnsfilter package/luci-app-dnsfilter
