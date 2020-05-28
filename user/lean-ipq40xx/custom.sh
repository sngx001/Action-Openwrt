#!/bin/bash

echo "Test custom.sh"

source ../version
sed -i '/shadow/d'                     package/lean/default-settings/files/zzz-default-settings
sed -i "s/openwrt.proxy.ustclug.org/op.hyird.xyz/g"  package/lean/default-settings/files/zzz-default-settings
sed -i "s/https:/R20.0.0/g"  package/lean/default-settings/files/zzz-default-settings
sed -i  's/http:/snapshots/g'  package/lean/default-settings/files/zzz-default-settings
sed -i 's/R20\(.[0-9].[0-9]\)/R20.$version/g' package/lean/default-settings/files/zzz-default-settings

git clone https://github.com/hyird/passwall.git                     package/passwall
git clone https://github.com/Mrbai98/luci-theme-atmaterial.git      package/luci-theme-atmaterial
svn checkout https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome package/adg
