#Name: Check-in & open broadcast
#Language: AppleScript
#Author: FDS
#Date: March 17 2020
tell application "WeChat" to activate
tell application "System Events"
	tell process "Wechat"
		keystroke "xxxdao" #AppleScript��֧������keystroke����Ҫ�л����������뷨��xxx��Ϊ�Լ�����ȫƴ
		keystroke "1" #ѡ�����뷨��ѡ��һ��
		key code 36 #return
	end tell
	delay 6
end tell

tell application "Safari" to activate #Safari��AppleScript֧�ֿ����Ժ�
tell application "Safari"
	make new document
	activate
	tell window 1
		
		set current tab to (make new tab with properties {URL:"https://xue.17xueba.com/views/w/study_center/schedule.vpage"}) #����ѧУʹ�õ���һ��ѧ��У��ƽ̨��������Ҫ���Ϊ����ƽ̨����������Ҳ��Ҫ�����޸ģ�
		delay 5 #����û���س�����ִ�������ǩҳ
		
		set closeTab to "һ��ѧ��У��ͬ��ͬѧ����ѧ��" as string
		tell application "Safari"
			close (every tab of window 1 whose name is not equal to closeTab) #�����ѧϰ��������ı�ǩҳ
		end tell
		delay 30
		
		tell application "System Events" #Safari���ڴ�С1461x1058�ҷ������ң���Ļ�ֱ���1920x1080
			click at {1587, 507} #����ۿ�ֱ����Ĭ�ϵ������ת���±�ǩҳ
			delay 10
			click at {1587, 507} #����û�������µ�һ��
			delay 15
			click at {1187, 742} #�����ȡ����
		end tell
		
	end tell
end tell