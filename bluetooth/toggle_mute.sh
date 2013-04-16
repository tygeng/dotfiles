CUR_DEFAULT_SINK=`pacmd list-sinks|grep '* index:'|awk '{print $3}'`
pactl set-sink-mute $CUR_DEFAULT_SINK toggle

