CUR_DEFAULT_SINK=`pacmd list-sinks|grep '* index:'|awk '{print $3}'`
pactl set-sink-volume $CUR_DEFAULT_SINK -- -3%

