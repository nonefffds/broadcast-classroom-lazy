#Name: Open next broadcast
#Language: AppleScript
#Author: FDS
#Date: March 17 2020
tell application "Safari"
	tell front window
		set current tab to tab 1
		delay 2
		tell application "System Events" #Safari窗口大小1461x1058且放在最右，屏幕分辨率1920x1080
			click at {1592, 766} #点击第三科，以免有科目重复项
			delay 10
			click at {1592, 766} #避免没点上重新点一下
			click at {1589, 637} #点击下一科
			delay 10
			click at {1589, 637} #避免没点上重新点一下
			delay 15
			click at {1187, 742} #点击收取海星
		end tell
	end tell
end tell