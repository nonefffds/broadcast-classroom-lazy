#Name: Open next broadcast
#Language: AppleScript
#Author: FDS
#Date: March 17 2020
tell application "Safari"
	tell front window
		set current tab to tab 1
		delay 2
		tell application "System Events" #Safari���ڴ�С1461x1058�ҷ������ң���Ļ�ֱ���1920x1080
			click at {1592, 766} #��������ƣ������п�Ŀ�ظ���
			delay 10
			click at {1592, 766} #����û�������µ�һ��
			click at {1589, 637} #�����һ��
			delay 10
			click at {1589, 637} #����û�������µ�һ��
			delay 15
			click at {1187, 742} #�����ȡ����
		end tell
	end tell
end tell