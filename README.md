# dotfiles

Install the following packages with your favorite AUR helper:
```
stow dunst obmenu-generator openbox picom rofi tint2 feh network-manager-applet polkit-dumb-agent-git volctl
numlockx redshift xcape opensnap gtk2-perl alacritty pcmanfm ttf-roboto lxappearance papirus-icon-theme
qt5-styleplugins vimix-gtk-themes file-roller p7zip unrar brave-bin xdotool i3lock-fancy-git neofetch
noto-fonts-emoji noto-fonts-cjk obconf zsh-syntax-highlighting zsh-autosuggestions flameshot
```

Download the openbox theme and install it with ```obconf```: <br>
https://www.gnome-look.org/p/1017696/

Download the cursor theme and extract it in ```~/.icons```: <br>
https://www.gnome-look.org/p/999927/

Add this to ```/etc/environment```:
```
XDG_CURRENT_DESKTOP=Unity 
QT_QPA_PLATFORMTHEME=gtk2
```

Then remove ```README.md```, ```screenshot.png``` and any already existing files and run:
```
stow -t ~ *
```

And set the GTK themes in ```lxappearance```. (set font hinting style to slight and antialiasing to on if you stowed fonts)

zsh setup:
```
touch "$HOME/.cache/zshhistory"
chsh $USER
```

If you wanna use the mount/unmount scripts, install ```ssh-askpass-fullscreen``` (AUR) and add this to ```/etc/sudo.conf```
```
Path askpass /usr/lib/openssh/ssh-askpass-fullscreen
```

![Screenshot: ](screenshot.png)
