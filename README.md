<a href="#readme">
  <img alt="🐧 Dotfiles" width="100%" src=".assets/logo.svg"/>
</a>

This repository is where I store and share my personal dotfiles. The configuration files you'll find here are heavily customized for my personal needs and they follow what I'd call my personal preference; this means that you should **NOT** simply clone this repository and expect everything to work the way it should — HOWEVER, for any questions regarding what you can do with these dotfiles, the answer will be "yes", as the [license](LICENSE) is *very* permissive.

---

<a href=".screenshots/03.png">
  <img alt="Sexy Screenshot" width="100%" src=".assets/sexy.svg"/>
</a>


---

## Table of Contents

|                            | Name      | Path                                                | Link                                              |
| -------------------------- | --------- | :-------------------------------------------------- | :-----------------------------------------------: |
| **Window Manager**         | bspwm     | [`📁 .config/bspwm`](.config/bspwm)                 | [🔗](https://github.com/baskerville/bspwm)        |
| **Keybind Daemon**         | sxhkd     | [`📁 .config/sxhkd`](.config/sxhkd)                 | [🔗](https://github.com/baskerville/sxhkd)        |
| **Status Bar**             | polybar   | [`📁 .config/polybar`](.config/polybar)             | [🔗](https://github.com/polybar/polybar)          |
| **Launcher Menu**          | rofi      | [`📁 .config/rofi`](.config/rofi)                   | [🔗](https://github.com/DaveDavenport/rofi)       |
| **Xorg Compositor**        | picom     | [`📁 .config/picom`](.config/picom)                 | [🔗](https://github.com/yshui/picom)              |
| **Notification Server**    | dunst     | [`📁 .config/dunst`](.config/dunst)                 | [🔗](https://dunst-project.org)                   |
| **System Monitor**         | htop      | [`📁 .config/htop`](.config/htop)                   | [🔗](https://htop.dev)                            |
| **Text Editor**            | neovim    | [`📁 .config/nvim`](.config/nvim)                   | [🔗](https://neovim.io)                           |
| **Terminal**               | alacritty | [`📁 .config/alacritty`](.config/alacritty)         | [🔗](https://github.com/alacritty/alacritty)      |
| **Prompt**                 | starship  | [`📁 .config/starship.toml`](.config/starship.toml) | [🔗](https://starship.rs)                         |

---

### Tray Icons

The system tray is located at the top right corner of the screen, at the very end of Polybar. The icons You will see in screenshots are listed below:
- **Network**: [network-manager-applet](https://gitlab.gnome.org/GNOME/network-manager-applet)
- **Volume**: [volumeicon](https://softwarebakery.com/maato/volumeicon.html)
- **Microphone**: [mictray](https://github.com/Junker/MicTray)
- **Bluetooth**: [blueman-applet](https://github.com/blueman-project/blueman)
- **Clipboard**: [parcellite](http://parcellite.sourceforge.net)
- **KDEConnect**: [kdeconnect-indicator](https://kdeconnect.kde.org)
- **Logitech Solaar**: [solaar](https://pwr-solaar.github.io/Solaar)

---

### Dependencies

Here's a list of dependencies that are **crucial** for everything to work and look nice & smooth:

- [bsp-layout](https://github.com/phenax/bsp-layout)
    - used in the Polybar layout switcher menu
- [pacman-contrib](https://gitlab.archlinux.org/pacman/pacman-contrib)
    - used in the Polybar updates module
- [playerctl](https://github.com/altdesktop/playerctl)
    - used in the Polybar Spotify module
- [protonvpn-cli](https://github.com/ProtonVPN/linux-cli)
    - used in the Polybar VPN IP address module
- [roboto](https://fonts.google.com/specimen/Roboto)
    - displays text in Polybar
- [nerd-fonts-symbols](https://github.com/ryanoasis/nerd-fonts)
    - displays the workspace icons and other system icons with the proper font
- [powerline-fonts](https://github.com/powerline/fonts)
    - displays the Polybar separators and Neovim plugin fonts

---

### Themes & Icons

All application colors, themes and icons I use are themed with [Nord Theme](https://nordtheme.com).

Here's a list of what you'll need to get everything to look uniform:

##### GTK
- **Theme**: [Nordic GTK](https://github.com/EliverLara/Nordic/tree/master/gtk-3.0) by [EliverLara](https://github.com/EliverLara)
- **Manager**: [lxappearance](https://wiki.lxde.org/en/LXAppearance)

##### Qt/Kvantum
- **Theme**: [Nordic (Solid) Kvantum](https://github.com/EliverLara/Nordic/tree/master/kde/kvantum/Nordic-Solid) by [EliverLara](https://github.com/EliverLara)
- **Managers**: [qt5ct](https://qt5ct.sourceforge.io) & [kvantum](https://github.com/tsujan/Kvantum)

##### Icons & Mouse Cursor
- **Icon Theme**: [Papirus Dark](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
- **Folder Icons**: [Papirus Nord](https://github.com/Adapta-Projects/Papirus-Nord)
- **Cursor Theme**: [Mocu](https://github.com/sevmeyer/mocu-xcursor)

---

### Managing Dotfiles

There are multiple ways to manage your dotfiles. I myself prefer to use Git; if you'd like to do the same as me, here's how you can manage your own dotfiles

```bash
$ git init --bare ~/.dotfiles
$ alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
$ config config status.showUntrackedFiles no
```

Don't forget to add the config alias to your shell's `rc` file afterwards!

For more details, read [this](https://wiki.archlinux.org/title/Dotfiles).

---

### Final Words

Got to the end of this readme? Leave a star on this repository to support me!
