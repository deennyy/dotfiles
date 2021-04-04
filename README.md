# dotfiles

A pretty much desktop environment made with openbox and other minimal(-ish) tools

![Screenshot: ](screenshot.png)

Install the following packages with your favorite AUR helper to get the basic desktop setup:
```
stow dunst obmenu-generator openbox picom xcape tint2 feh network-manager-applet polkit-gnome volctl 
vimix-gtk-themes xdotool i3lock-color flameshot numlockx redshift ttf-roboto lxappearance opensnap
gtk2-perl lxappearance-obconf gnome-keyring papirus-icon-theme
```

Download the openbox theme and install it with ```lxappearance```: <br>
https://www.gnome-look.org/p/1017696/

Download the cursor theme and extract it in ```~/.icons```: <br>
https://www.gnome-look.org/p/999927/

If you use QT apps and want them to match the GTK theme install ```qt5-styleplugins``` and edit ```/etc/environment```:
```
XDG_CURRENT_DESKTOP=Unity 
QT_QPA_PLATFORMTHEME=gtk2
```

Then remove ```README.md```, ```screenshot.png``` and any already existing files and inside the dotfiles directory run:
```
stow -t ~ openbox tint2 dunst ...
```
Or if you just want to use all my dotfiles just run:
```
stow -t ~ *
```

And set the GTK themes in ```lxappearance```. **(set hinting style to slight and antialiasing to on if you stowed fonts)**

Also change "alacritty" in openbox/rc.xml and obmenu-generator/config.pl if you want to use another terminal. <br>
You can also change "rofi" in the above mentioned files if you use dmenu or any other run launcher. <br>
Some things in openbox/rc.xml are hardcoded for 1080p, but you can easily adapt them for your resolution.

# zsh setup:
Install ```zsh``` and ```zsh-syntax-highlighting``` and then run:
```
touch "$HOME/.cache/zshhistory"
chsh $USER
```

# Mount scripts:
If you want to use the rofimount/rofiunmount scripts install ```rofi``` and ```seahorse``` add this to ```/etc/sudo.conf```:
```
Path askpass /usr/lib/seahorse/ssh-askpass
```
Also install ```jmtpfs``` (AUR) if you want to mount Android phones and ```dosfstools``` if you want to mount FAT drives.

# Audio:
If you stowed audio make sure you have ```pulseaudio``` and ```pulseaudio-alsa``` installed and edit ```/etc/pulse/default.pa```:
```
load-module module-udev-detect
```
to
```
load-module module-udev-detect tsched=0
```
