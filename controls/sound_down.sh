headphones=$(amixer -c 0 contents | \
awk -F"," '
$1 == "numid=67" {
    c=1
} c && /: values/ {
   split($0, a, "=")
   print a[2];
   exit
}')

#if [ "$headphones"=="on" ]; then
#  current=$(echo $(amixer -c 0 set Headphone 2%-) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
#  echo "Vol:" $current
#else 
#  current=$(echo $(amixer -c 0 set Speaker 5%-) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
#  echo "Vol:" $current
#fi
#current=$(echo $(amixer -D pulse set Master 5%-) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
#notify-send -t 1 "Volume:" $current
#current=$(echo $(amixer -c 0 set Headphone 5%-) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
#current=$(echo $(amixer -c 0 set Speaker 5%-) | awk -F"[][]" '/%/ { print $2 }' | head -n 1)
current=$(echo $(amixer -D pulse set Master 5%-) | awk -F"[][]" '// { print $4 }')
