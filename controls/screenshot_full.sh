path="/home/hgeg/screenshots/screen_"$(date +"%d %b %Y %H:%M:%S")".png"
import -window root "$path"
notify-send -t 1 "Screenshot" "saved to $path"

