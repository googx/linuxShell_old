#!/bin/bash
####################################################
#
# File Name: fssh.sh
# Author: hx940929
# AuthorSite: https://www.thesunboy.com/
# Created Time: 2017年09月06日 星期三 22时00分58秒
###-----------------说明-------------------------###
#  快速进入我常用的 ssh服务器中
####################################################
source ${PUB_SHELLS}/developEnvironment/bin/aliasAndEnv/function/getHomePath.sh
authDir=$(_getHomePath)
authFile=${authDir}/.ssh/localhost.pri

#[-eq 用于数字 不能用于字符串 ,最好使用=比较],判断为空时,需要变量加上引号 非空判断: ! -z 或者 -n
server=$1;
#nas,mint,deepin,aliyun,hkyun


function sshRemote(){
    echo "try connecting [${2}]"
    $(which ssh) -i ${authFile} -p  $@

}


case ${server} in
    mint)
        sshRemote 22 hanxu@vpn.home
        ;;
    nas)
        sshRemote 22 root@10.193.1.2
        ;;
    bj)
        sshRemote 1113 root@vpn.vpn
        ;;
    vpnhk)
        sshRemote 1113 root@vpn.hk
        ;;
    hk)
        sshRemote 1113 root@hk.thesunboy.com
	;;
    nasloop)
        sshRemote 22 root@10.192.1.1
        ;;
    comp)
        sshRemote 1113 hanxu@vpn.company
	    ;;
	wbt1)
        sshRemote 9802 root@222.240.217.26
	    ;;
    *)
        echo "fssh.sh ( mint| nas| bj |hk |nasloop |comp |wbt1)"

        ;;
esac

