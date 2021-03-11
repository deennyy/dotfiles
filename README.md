# dotfiles

Install the following packages with your favorite AUR helper:
```
stow dunst obmenu-generator openbox picom rofi tint2 feh network-manager-applet polkit-dumb-agent-git volctl
numlockx redshift xcape opensnap gtk2-perl alacritty pcmanfm ttf-roboto lxappearance papirus-icon-theme
qt5-styleplugins vimix-gtk-themes file-roller p7zip unrar brave-bin xdotool i3lock-fancy-git neofetch
noto-fonts-emoji noto-fonts-cjk obconf zsh-syntax-highlighting zsh-autosuggestions
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

Then inside the ```dotfiles``` directory remove the ```README.md``` and ```screenshot.png``` files and run: <br> (you will probably need to remove any already existing files)
```
stow -t ~ *
```

And configure the GTK themes in ```lxappearance```.

zsh setup:
```
touch "$HOME/.cache/zshhistory"
chsh $USER
```

![Screenshot: ](screenshot.png)
