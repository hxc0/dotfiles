#!/usr/bin/env bash

tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
i3lock -u -i "$tmpbg" 2> /dev/null
rm "$tmpbg"
