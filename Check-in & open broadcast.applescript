#Name: Check-in & open broadcast
#Language: AppleScript
#Author: FDS
#Date: March 17 2020
tell application "WeChat" to activate
tell application "System Events"
	tell process "Wechat"
		keystroke "xxxdao" #AppleScript不支持中文keystroke，需要切换到中文输入法，xxx改为自己名字全拼
		keystroke "1" #选择输入法候选第一项
		key code 36 #return
	end tell
	delay 6
end tell

tell application "Safari" to activate #Safari对AppleScript支持可能稍好
tell application "Safari"
	make new document
	activate
	tell window 1
		
		set current tab to (make new tab with properties {URL:"https://xue.17xueba.com/views/w/study_center/schedule.vpage"}) #我们学校使用的是一起学网校的平台，如有需要请改为其他平台（其他内容也需要进行修改）
		delay 5 #避免没加载出来就执行清除标签页
		
		set closeTab to "一起学网校（同班同学都在学）" as string
		tell application "Safari"
			close (every tab of window 1 whose name is not equal to closeTab) #清除除学习中心以外的标签页
		end tell
		delay 30
		
		tell application "System Events" #Safari窗口大小1461x1058且放在最右，屏幕分辨率1920x1080
			click at {1587, 507} #点击观看直播，默认点击会跳转到新标签页
			delay 10
			click at {1587, 507} #避免没点上重新点一下
			delay 15
			click at {1187, 742} #点击收取海星
		end tell
		
	end tell
end tell