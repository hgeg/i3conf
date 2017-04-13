import subprocess, re

metadata = subprocess.check_output(['playerctl', 'next'])
metadata = subprocess.check_output(['playerctl', 'metadata'])

artist = re.findall(r"'xesam:artist': <\['(.+)'\]>", metadata)[0]
title = re.findall(r"'xesam:title': <'([^>]+)'>", metadata)[0]
body = '"%s - %s"'%(artist, title)

subprocess.call(['notify-send','-t','1','Playing:', body])
