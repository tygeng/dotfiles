if [ `xinput --list-props 11|grep 'Device Enabled'|awk '{print $4}'` -eq '0' ]
then
    xinput enable 11
else
    xinput disable 11
fi
