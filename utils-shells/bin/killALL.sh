#!/bin/bash
####################################################
#
# File Name: killALL.sh
# Author: hx940929
# AuthorSite: https://www.thesunboy.com/
# Created Time: 2018年01月10日 星期三 20时51分11秒
###-----------------说明-------------------------###
#                                                   
####################################################
pname=$1
ps aux | grep $pname | grep -v grep | awk '{print $2}' |xargs kill -9
