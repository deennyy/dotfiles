#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#    exec startx
#    startx -- -keeptty &> ~/.cache/xorg.log
#fi
