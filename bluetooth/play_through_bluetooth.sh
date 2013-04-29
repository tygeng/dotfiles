# pactl load-module module-alsa-sink device=bluetooth
CUR_DEFAULT_SINK=`pacmd list-sinks|grep '* index:'|awk '{print $3}'`
NEW_DEFAULT_SINK=`pacmd list-sinks|grep 'index'|grep -v '* index'|awk '{print $2}'`
pacmd set-default-sink $NEW_DEFAULT_SINK
# pactl set-sink-volume $NEW_DEFAULT_SINK 40%
for INPUT in `pacmd list-sink-inputs |grep index|awk '{print $2}'`
do
    pacmd move-sink-input $INPUT $NEW_DEFAULT_SINK
done
