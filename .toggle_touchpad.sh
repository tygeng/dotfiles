if [ `xinput --list-props "SynPS/2 Synaptics TouchPad"|grep 'Device Enabled'|awk '{print $4}'` -eq '0' ]
then
    xinput enable "SynPS/2 Synaptics TouchPad"
    notify-send 'Touchpad Enabled'
else
    xinput disable "SynPS/2 Synaptics TouchPad"
    notify-send 'Touchpad Disabled'
fi
