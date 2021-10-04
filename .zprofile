# Autostart X using startx if on graphical login
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx
