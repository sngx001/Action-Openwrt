#!/bin/bash

echo "Test custom.sh"

source ../version
sed -i '/shadow/d'                     package/lean/default-settings/files/zzz-default-settings
sed -i '/nas/d'                     package/lean/default-settings/files/zzz-default-settings
sed -i "s/openwrt.proxy.ustclug.org/op.hyird.xyz/g"  package/lean/default-settings/files/zzz-default-settings
sed -i "s/https:/R20.0.0/g"  package/lean/default-settings/files/zzz-default-settings
sed -i  's/http:/snapshots/g'  package/lean/default-settings/files/zzz-default-settings
sed -i  "s/R20\(.[0-9].[0-9]\{1,2\}\)/R20.$version/g" package/lean/default-settings/files/zzz-default-settings

git clone https://github.com/hyird/pw.git -b master                     package/passwall
git clone https://github.com/Mrbai98/luci-theme-atmaterial.git      package/luci-theme-atmaterial
svn checkout https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome package/adg
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git package/luci-theme-infinityfreedom
git clone https://github.com/project-openwrt/openwrt-gowebdav.git package/webdav

#echo "CONFIG_SFC_MCDI_MON=y" >target/linux/x86/config-4.19
#echo "CONFIG_HSA_AMD=y" >target/linux/x86/config-4.19
