#!/bin/bash

# configurables
barheight=24
separator="|"
font1="URWGothic-Book 11"
font2="-URWGothic-Book 11"
color_foreground="#ffffff"
color_background="#282f3a"

set -f
DIR=~/.config/
monitor=0
mgeom=( $(herbstclient monitor_rect "$monitor") )
offset=$(herbstclient get frame_gap)
bargeometry="${mgeom[2]}x$barheight+0+0"

herbstclient pad $monitor $(expr $barheight)

python $DIR/topbar.py | lemonbar -u 2 -d -p -g $bargeometry -f $font1 -f $font2 -F $color_foreground -B $color_background
