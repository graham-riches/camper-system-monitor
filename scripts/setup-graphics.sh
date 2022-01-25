#!/bin/bash
export DISPLAY=:0
xrandr --newmode "800x480_60.00"   29.50  800 824 896 992  480 483 493 500 -hsync +vsync
xrandr --addmode "DISP3 BG - DI1" "800x480_60.00"
xrandr -s "800x480_60.00"