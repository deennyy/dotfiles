# dotfiles

Install the following packages with your favorite AUR helper: <br>
```
stow dunst obmenu-generator openbox picom rofi tint2 feh network-manager-applet polkit-dumb-agent-git asdasd
volctl numlockx redshift xcape opensnap gtk2-perl alacritty pcmanfm ttf-roboto lxappearance xdotool 
papirus-icon-theme qt5-styleplugins vimix-gtk-themes file-roller p7zip unrar brave-bin neofetch 
i3lock-fancy-git noto-fonts-emoji noto-fonts-cjk obconf
```

Download the openbox theme and install it with ```obconf```: <br>
https://www.gnome-look.org/p/1017696/

Download the cursor theme and put it in ```~/.icons```: <br>
https://www.gnome-look.org/p/999927/

Put this in ```/etc/environment```: <br>
```
XDG_CURRENT_DESKTOP=Unity 
QT_QPA_PLATFORMTHEME=gtk2
```

And then inside the ```dotfiles``` directory remove the ```README.md``` and ```screenshot.png``` files and run: <br> (you will probably need to remove ```~/.bashrc``` and any other already existing files) <br>
```
stow -t ~ *
```

And configure the GTK themes in ```lxappearance```.

![Screenshot: ](screenshot.png)
