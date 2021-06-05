if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  startx -- -keeptty &> ~/.cache/xorg.log
fi
