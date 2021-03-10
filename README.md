# dotfiles

Install the following packages with your favorite AUR helper: <br>
```stow dunst obmenu-generator openbox picom rofi tint2 feh network-manager-applet polkit-dumb-agent-git volctl``` <br>
```numlockx redshift xcape opensnap gtk2-perl alacritty pcmanfm ttf-roboto lxappearance papirus-icon-theme``` <br>
```qt5-styleplugins vimix-gtk-themes file-roller p7zip unrar brave-bin xdotool i3lock-fancy-git``` <br>
```noto-fonts-emoji noto-fonts-cjk```

Download the openbox theme and put it in ```~/.themes```:
https://www.gnome-look.org/p/1017696/

Download the cursor theme and put it in ```~/.icons```:
https://www.gnome-look.org/p/999927/

And then inside the dotfiles directory remove the README and screenshot files and run: <br>
```stow -t ~ *```

And configure the GTK themes in lxappearance.

![Screenshot: ](screenshot.png)
