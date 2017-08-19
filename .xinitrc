setxkbmap pl
xbindkeys
xmodmap -e 'remove Mod1 = Alt_L'
xmodmap -e 'add Mod3 = Alt_L'
xset r rate 212
exec i3
