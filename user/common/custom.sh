#!/bin/bash

echo "Apply custom.sh"

source ../version

sed -i '/lienol/d'                                                             package/default-settings/files/zzz-default-settings
sed -i '/shadow/d'                                                             package/default-settings/files/zzz-default-settings
sed -i "s/#sed/sed/g"                                                          package/default-settings/files/zzz-default-settings
sed -i "s/openwrt.proxy.ustclug.org/op.hyird.xyz/g"                            package/default-settings/files/zzz-default-settings
sed -i "s/https/L20.$version/g"                                                package/default-settings/files/zzz-default-settings
sed -i  's/http/releases\\\/19.07\-SNAPSHOT/g'                                 package/default-settings/files/zzz-default-settings
sed -i '/exit/d'                                                               package/default-settings/files/zzz-default-settings
echo "sed -i \"s/19.07-SNAPSHOT/L20.$version/g\" /etc/openwrt_release " >>     package/default-settings/files/zzz-default-settings
echo "exit 0" >>                                                               package/default-settings/files/zzz-default-settings

git clone https://github.com/fw876/helloworld.git                                                        package/ssr
git clone https://github.com/CCnut/feed-netkeeper.git -b openwrt-18.06                                   package/nk
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2    			                 package/redsocks2
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping                             package/tcpping
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks                          package/microsocks
git clone https://github.com/project-openwrt/openwrt-gowebdav.git                                        package/webdav
git clone https://github.com/DNSCrypt/dnscrypt-proxy.git						     package/dnscrypt-proxy
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git                             package/luci-theme-infinityfreedom
git clone https://github.com/yangsongli/luci-theme-atmaterial.git                                        package/luci-theme-atmaterial
git clone https://github.com/peter-tank/luci-app-dnscrypt-proxy2.git                                     package/luci-app-dnscrypt-proxy2
git clone https://github.com/peter-tank/openwrt-minisign.git                                             package/minisign                                 


svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ttyd				                     package/luci-app-ttyd
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-airplay2                         package/luci-app-airplay2
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-familycloud                      package/luci-app-familycloud               
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-music-remote-center              package/luci-app-music-remote-center		     
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-ps3netsrv                        package/luci-app-ps3netsrv
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ps3netsrv                                 package/ps3netsrv 
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone-ng                                 package/rclone-ng 
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone-webui-react                        package/rclone-webui-react
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/rclone                                    package/rclone
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-rclone                           package/luci-app-rclone 

