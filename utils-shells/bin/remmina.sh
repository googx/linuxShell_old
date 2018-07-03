#!/bin/bash
#--------------------------------------------------
# File Name: ${FILE_NAME}
# Author: hanxu
# AuthorSite: https://www.thesunboy.com/
# Created Time: 2018-07-03 下午1:34
#---------------------说明--------------------------
#  使用remmina命令来指定配置文件，调用远程桌面。
#---------------------------------------------------





function start(){
        remmina -c $@ ;

}

case $1 in
local)
    shift;
    nohup $(start ~/.remmina/1530511931692.remmina);
   ;;
esac