@echo off
svn update
svn add * --force
echo ��ʼ����Դ���ύ����...
echo ��������µ�������Ϣ:
set /p comment=
svn commit -m %comment%
echo ���������.
pause