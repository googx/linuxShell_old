#!/bin/bash
#--------------------------------------------------
# File Name: createGitRepos.sh
# Author: hanxu
# AuthorSite: https://www.thesunboy.com/
# Created Time: 2018-06-14 下午5:02
###-----------------说明-------------------------###
# 创建git仓库
####################################################
repoName=$1
currpath=$pwd
svnUser=svnserve
repoPath=/root/allServer/svnServer/SVNServerRepository/
configPath=/root/allServer/svnServer/config
#svnConfPath=ln -s ../../config/ conf
#测试svn仓库目录是否已存在该目录
cd $repoPath
svnadmin create $repoName
cd $repoName
#如果上个操作为true
#if [ ];
rm -r ./conf
ln -s ${configPath} conf
cd ../
chown -R $svnUser:$svnUser ./$repoName
cd $currpath
echo "创建仓库[ " $repoName " ]完成"

#fi
