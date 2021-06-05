[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec dbus-launch openbox-session
