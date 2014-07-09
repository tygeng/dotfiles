xinput disable "SynPS/2 Synaptics TouchPad"
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Velocity Scaling" 250
xinput set-prop "TPPS/2 IBM TrackPoint" "Device Accel Profile" 2

synclient PalmDetect=1
synclient PalmMinWidth=2
synclient PalmMinZ=20
synclient ClickFinger2=2
synclient ClickFinger3=3
synclient TapButton3=3
synclient TapButton2=2
synclient SingleTapTimeout=50
pacmd set-default-sink 0

# xkbcomp ~/.Xkeymap :0
