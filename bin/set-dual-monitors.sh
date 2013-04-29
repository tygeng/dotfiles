#!/bin/bash
OUTPUT_MESSAGE=`xrandr|grep " connect"|grep -v "LVDS1"`
DISPLAY_OUTPUT=`echo $OUTPUT_MESSAGE|awk '{print $1}'`
if [ -n $DISPLAY_OUTPUT ]
then
    if [ `echo $OUTPUT_MESSAGE|awk '{print $12}'` ]
    then
        xrandr --output $DISPLAY_OUTPUT --off
        echo $DISPLAY_OUTPUT disconnected.
    else
        xrandr --output $DISPLAY_OUTPUT --auto --right-of LVDS1
        echo $DISPLAY_OUTPUT connected.
    fi
fi
