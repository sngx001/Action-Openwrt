#!/bin/bash

echo "Test custom.sh"

source ../version
sed -i '92d'                                                                   package/system/opkg/Makefile
sed -i '/lienol/d'                                                             package/default-settings/files/zzz-default-settings
sed -i '/diy1/d'                                                             package/default-settings/files/zzz-default-settings
sed -i '/shadow/d'                                                             package/default-settings/files/zzz-default-settings
sed -i "s/#sed/sed/g"                                                          package/default-settings/files/zzz-default-settings
sed -i "s/openwrt.proxy.ustclug.org/openwrt.download/g"                            package/default-settings/files/zzz-default-settings
sed -i "s/https/L20.$version/g"                                                package/default-settings/files/zzz-default-settings
sed -i  's/http/releases\\\/19.07\-SNAPSHOT/g'                                 package/default-settings/files/zzz-default-settings
sed -i '/exit/d'                                                               package/default-settings/files/zzz-default-settings
echo "sed -i \"s/19.07-SNAPSHOT/L20.$version/g\" /etc/openwrt_release " >>     package/default-settings/files/zzz-default-settings
echo "exit 0" >>                                                               package/default-settings/files/zzz-default-settings

git clone https://github.com/fw876/helloworld.git                                                        package/ssr
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2    			                 package/redsocks2
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/tcpping                             package/tcpping
svn checkout https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks                          package/microsocks
                 

