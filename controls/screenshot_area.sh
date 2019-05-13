path="/home/hgeg/screenshots/area_"$(date +"%d %b %Y %H:%M:%S")".png"
echo $path
import -display :0 "$path"
notify-send -t 1 "Screenshot" "saved to $path"

