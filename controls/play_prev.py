import subprocess, time

metadata = subprocess.check_output(['playerctl', 'previous'])

time.sleep(0.1)
artist = subprocess.check_output(['playerctl', 'metadata', 'xesam:artist'])
title = subprocess.check_output(['playerctl', 'metadata', 'xesam:title'])
body = '"%s - %s"'%(artist, title)

subprocess.call(['notify-send','-t','1','Playing:', body])
