# dotfiles

A pretty much desktop environment made with openbox and other minimal(-ish) tools

![Screenshot: ](screenshot.png)

Install the following packages with your favorite AUR helper:
```
stow dunst obmenu-generator openbox picom rofi tint2 feh network-manager-applet polkit-gnome volctl neofetch
qt5-styleplugins vimix-gtk-themes file-roller p7zip unrar brave-bin xdotool i3lock-color flameshot neovim
numlockx redshift xcape opensnap gtk2-perl alacritty pcmanfm ttf-roboto lxappearance lxappearance-obconf
zsh-syntax-highlighting gnome-keyring seahorse papirus-icon-theme
```

Download the openbox theme and install it with ```lxappearance```: <br>
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

And set the GTK themes in ```lxappearance```. **(set hinting style to slight and antialiasing to on if you stowed fonts)**

# zsh setup:
```
touch "$HOME/.cache/zshhistory"
chsh $USER
```

# Mount scripts:
If you want to use the mount/unmount scripts add this to ```/etc/sudo.conf```:
```
Path askpass /usr/lib/seahorse/ssh-askpass
```
Also install ```jmtpfs``` (AUR) if you want to mount Android phones and ```dosfstools``` if you want to mount FAT drives.

# Audio:
If you stowed audio edit ```/etc/pulse/default.pa``` and change:
```
load-module module-udev-detect
```
to
```
load-module module-udev-detect tsched=0
```
