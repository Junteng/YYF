@ECHO off

ECHO ���ÿ��������˫��start.cmd��ֱ�������������
ECHO @echo off > start.cmd
ECHO echo �����������������... >> start.cmd
ECHO vagrant up>>start.cmd
ECHO pause>> start.cmd


ECHO ���ÿ��ٹرգ�˫��stop.cmd��ֱ�������������
ECHO @echo off > stop.cmd
ECHO echo ���ڹر���������� >> stop.cmd
ECHO vagrant halt>>stop.cmd
ECHO pause >> stop.cmd

ECHO ������ʱĿ¼
RD temp /s /q
mkdir temp
mkdir temp\cache
mkdir temp\kv
mkdir temp\log

ECHO �����������������
vagrant halt
vagrant up --provision
pause