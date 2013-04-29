xinput disable 11
pacmd set-default-sink 0
sleep 2
xinput set-prop 13 "Device Accel Velocity Scaling" 100
xinput set-prop 13 "Device Accel Profile" 2
synclient PalmDetect=1
synclient PalmMinWidth=2
synclient PalmMinZ=20
synclient ClickFinger2=2
synclient ClickFinger3=3
synclient TapButton3=3
synclient TapButton2=2
synclient SingleTapTimeout=50


