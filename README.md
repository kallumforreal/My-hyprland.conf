# kallumhyprland.conf
This is my Hyprland config!


# Prerequisites

- ## Packages
    - [hyprpolkitagent](https://github.com/hyprwm/hyprpolkitagent)
    - [kservice](https://github.com/KDE/kservice)
    - [hypridle](https://github.com/hyprwm/hypridle)
    - [hyprpicker](https://github.com/hyprwm/hyprpicker)
    - [hyprquickshot](https://github.com/jamdon2/hyprquickshot)
    - [kwallet](https://apps.kde.org/kwalletmanager5/)
    - [kitty](https://github.com/kovidgoyal/kitty)
    - [dolphin](https://apps.kde.org/dolphin/)
    - [gedit](https://gedit-text-editor.org/)
    - [zen browser](https://zen-browser.app/)
    - [vesktop](https://github.com/Vencord/Vesktop)
    - [noctalia-shell-git](https://github.com/noctalia-dev/noctalia-shell?tab=readme-ov-file)
    - [quickshell](https://github.com/quickshell-mirror/quickshell)
    - [lollypop](https://gitlab.gnome.org/World/lollypop)
    - [steam](https://store.steampowered.com/about/)
    - [hypremoji](https://github.com/Musagy/hypremoji)
    - [zplug/zsh](https://github.com/zplug/zplug)
    - [cava](https://github.com/karlstav/cava)
    - [cmatrix](https://github.com/abishekvashok/cmatrix)
    - [tty-clock](https://github.com/xorg62/tty-clock)
    - [playerctl](https://github.com/altdesktop/playerctl)
    - [fastfetch](https://github.com/fastfetch-cli/fastfetch)
    - [matugen](https://github.com/InioX/matugen)



## Installing prerequisites



### DISCLAIMER
<br>
I use Arch Linux, I do not use Mint, Ubuntu, Fedora, Nix, or Void, therefore I am not 100% sure if all of the install commands work for them.

<details><summary><strong><sub><img  src="https://cdn.simpleicons.org/archlinux/white" height="20" width="20"></sub> Arch Linux</strong></summary>

  
- **Pacman:**


```md
sudo pacman -Sy --needed kitty dolphin gedit hyprpolkitagent lollypop quickshell steam cmatrix cava playerctl fastfetch matugen
```


- **yay:**


```md
yay -Sy --needed kservice hypridle hyprpicker kwallet zen-browser-bin vesktop noctalia-shell-git hypremoji tty-clock
```


- **hyprquickshot:**


```md
git clone https://github.com/jamdon2/hyprquickshot ~/.config/quickshell/hyprquickshot
```


- **zplug/zsh**


```md
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```
</details>



<details><summary><strong><sub><img  src="https://cdn.simpleicons.org/linuxmint/white" height="20" width="20"></sub> Linux Mint</strong></summary>


- **apt**
  
```md
sudo apt update && sudo apt install -y kitty dolphin gedit lollypop steam cmatrix cava playerctl fastfetch libkf5service-bin kwalletmanager tty-clock
```


- **hyprpolkitagent**
  
```md
git clone https://github.com/hyprland-community/hyprpolkitagent.git && cd hyprpolkitagent && meson setup build && ninja -C build install
```
(requires meson, ninja; install via `sudo apt install meson ninja-build` first if needed).


- **quickshell**
  
```md
git clone https://git.sr.ht/~novakane/quickshell && cd quickshell && meson setup build && ninja -C build install
```
(requires meson, ninja; install as above).


- **hypridle**
  
```md
git clone https://github.com/hyprland-community/hypridle && cd hypridle && make all && sudo make install
```


- **hyprpicker**
  
```md
git clone https://github.com/hyprland-community/hyprpicker && cd hyprpicker && cmake -DCMAKE_INSTALL_PREFIX=/usr -S . && make && sudo make install
```
(requires cmake; install via `sudo apt install cmake`).

- **matugen**
  
```md
cargo install matugen
```
(Cargo is a Rust installer; install via sudo `sudo apt install cargo` first if needed).

- **Zen-browser**
  
```md
wget https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-amd64.deb -O zen.deb && sudo dpkg -i zen.deb
```
(or use Flatpak: `flatpak install flathub io.zen.Zen`).

- **Vesktop**
  
```md
wget https://github.com/Vencord/Vesktop/releases/latest/download/vesktop.deb -O vesktop.deb && sudo dpkg -i vesktop.deb
```
(or use Flatpak: `flatpak install flathub dev.vencord.Vesktop`).

- **Noctalia**
  
```md
git clone https://github.com/noctalia-dev/noctalia-shell.git ~/.config/noctalia-shell
```
(requires quickshell installed; follow the repo's README for setup).

- **hypremoji**
  
```md
git clone https://github.com/hyprland-community/hypremoji-picker.git && cd hypremoji-picker && make all && sudo make install
```


- **hyprquickshot:**
  
```md
git clone https://github.com/jamdon2/hyprquickshot ~/.config/quickshell/hyprquickshot
```


- **zplug/zsh**
  
```md
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```
</details>



<details><summary><strong><sub><img  src="https://cdn.simpleicons.org/ubuntu/white" height="20" width="20"></sub> Ubuntu</strong></summary>

- **apt**
  
```md
sudo apt update && sudo apt install -y kitty dolphin gedit lollypop steam cmatrix cava playerctl fastfetch libkf5service-bin kwalletmanager tty-clock
```

- **hyprpolkitagent**
  
```md
git clone https://github.com/hyprland-community/hyprpolkitagent.git && cd hyprpolkitagent && meson setup build && ninja -C build install
```
(requires meson, ninja; install via `sudo apt install meson ninja-build` first if needed).

- **quickshell**
  
```md
git clone https://git.sr.ht/~novakane/quickshell && cd quickshell && meson setup build && ninja -C build install
```
(requires meson, ninja; install as above).

- **hypridle**
  
```md
git clone https://github.com/hyprland-community/hypridle && cd hypridle && make all && sudo make install
```

- **hyprpicker**
  
```md
git clone https://github.com/hyprland-community/hyprpicker && cd hyprpicker && cmake -DCMAKE_INSTALL_PREFIX=/usr -S . && make && sudo make install
```
(requires cmake; install via `sudo apt install cmake`).

- **matugen**
  
```md
cargo install matugen
```
(Cargo is a Rust installer; install via sudo `sudo apt install cargo` first if needed).

- **Zen-browser**
  
```md
wget https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-amd64.deb -O zen.deb && sudo dpkg -i zen.deb
```
(or use Flatpak: `flatpak install flathub io.zen.Zen`).

- **Vesktop**
  
```md
wget https://github.com/Vencord/Vesktop/releases/latest/download/vesktop.deb -O vesktop.deb && sudo dpkg -i vesktop.deb
```
(or use Flatpak: `flatpak install flathub dev.vencord.Vesktop`).

- **Noctalia**
  
```md
git clone https://github.com/noctalia-dev/noctalia-shell.git ~/.config/noctalia-shell
```
(requires quickshell installed; follow the repo's README for setup).

- **hypremoji**
  
```md
git clone https://github.com/hyprland-community/hypremoji-picker.git && cd hypremoji-picker && make all && sudo make install
```

- **hyprquickshot:**
  

```md
git clone https://github.com/jamdon2/hyprquickshot ~/.config/quickshell/hyprquickshot
```


- **zplug/zsh**
  
```md
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

</details>



<details><summary><strong><sub><img  src="https://cdn.simpleicons.org/voidlinux/white" height="20" width="20"></sub> Void Linux</strong></summary>

- **xbps**
  
```md
sudo xbps-install -Sy --needed kitty dolphin gedit hyprpolkitagent lollypop steam cmatrix cava playerctl fastfetch kservice kwallet tty-clock
```

- **quickshell**
  
```md
git clone https://git.sr.ht/~novakane/quickshell && cd quickshell && meson setup build && ninja -C build install
```
(requires meson, ninja; install via `sudo xbps-install -Sy meson ninja` first if needed).

- **hypridle**
  
```md
git clone https://github.com/hyprland-community/hypridle && cd hypridle && make all && sudo make install
```

- **hyprpicker**
  
```md
git clone https://github.com/hyprland-community/hyprpicker && cd hyprpicker && cmake -DCMAKE_INSTALL_PREFIX=/usr -S . && make && sudo make install
```

- **matugen**
  
```md
cargo install matugen
```
(Cargo is a Rust installer; install via sudo `xbps-install -Sy rust cargo` first if needed).

- **Zen-Browser**
  
Flathub
```md
flatpak install flathub app.zen_browser.zen
```
OR
<br>
https://zen-browser.app/download/

- **Vesktop**


Download the AppImage from https://github.com/Vencord/Vesktop/releases/latest, make it executable (chmod +x Vesktop.AppImage), and run it.
<br>
OR
<br>
```md
flatpak install flathub dev.vencord.Vesktop
```

- **Noctalia**
  
```md
git clone https://github.com/noctalia-dev/noctalia-shell.git ~/.config/noctalia-shell
```
(requires quickshell installed; follow the repo's README for setup).

- **hypremoji**
  
```md
git clone https://github.com/hyprland-community/hypremoji-picker.git && cd hypremoji-picker && make all && sudo make install
```

- **hyprquickshot:**
  
```md
git clone https://github.com/jamdon2/hyprquickshot ~/.config/quickshell/hyprquickshot
```

- **zplug/zsh**

```md
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

</details>



<details><summary><strong><sub><img  src="https://cdn.simpleicons.org/fedora/white" height="20" width="20"></sub> Fedora</strong></summary>

- **dnf**
  
```md
sudo dnf copr enable errornointernet/quickshell
```
(Enable COPR for quickshell)
<br>
```md
sudo dnf install -y kitty dolphin gedit hyprpolkitagent lollypop quickshell steam cmatrix cava playerctl fastfetch kf6-kservice hypridle hyprpicker kf6-kwallet tty-clock
```

- **matugen**
  
```md
cargo install matugen
```
(Cargo is a Rust installer; install via sudo `sudo dnf install cargo` first if needed).

- **Zen-Browser**
  
```md
wget https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-amd64.rpm -O zen.rpm && sudo dnf install ./zen.rpm
```
(or use Flatpak: `flatpak install flathub io.zen.Zen`)

- **Vesktop**
  
```md
wget https://github.com/Vencord/Vesktop/releases/latest/download/vesktop.rpm -O vesktop.rpm && sudo dnf install ./vesktop.rpm
```
(or use Flatpak: `flatpak install flathub dev.vencord.Vesktop`)

- **Noctalia**
  
```md
git clone https://github.com/noctalia-dev/noctalia-shell.git ~/.config/noctalia-shell
```
(requires quickshell installed; follow the repo's README for setup).

- **hypremoji**
  
```md
git clone https://github.com/hyprland-community/hypremoji-picker.git && cd hypremoji-picker && make all && sudo make install
```

- **hyprquickshot:**
  
```md
git clone https://github.com/jamdon2/hyprquickshot ~/.config/quickshell/hyprquickshot
```


- **zplug/zsh**

```md
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```

</details>



# Installation
<details>
  <summary><strong>Manual</strong></summary>

<br>

- **Clone the Repository:**

```bash
git clone https://github.com/kallumforreal/kallumhyprland.conf
```
- **Folder/File Locations:**

  
`hypr & fastfetch → ~/.config`
<br>
`.p10k.zsh, .zshrc → /home/{YOURUSER}`
</details>

<details><summary><strong>Automatic</strong></summary>
- **Automatic**
<br>
- `Coming someday`
</details>



# Keybinds
## Session Binds
  - bind = CTRL ALT, Delete, exit,
  - bind = SUPER, L, exec, qs -c noctalia-shell ipc call lockScreen lock
  - bind = SUPER, CTRL ALT, exec, systemctl --user start hyprpolkitagent



## Program Binds
  - bind = SUPER, Q, exec, $terminal zsh -c "fastfetch; exec zsh"
  - bind = SUPER, R, exec, $menu
  - bind = SUPER, E, exec, $fileManager /home/kallum
  - bind = SUPER SHIFT, E, exec, $fileManager /home/kallum/.config/
  - bind = SUPER, B, exec, $browser
  - bind = SUPER SHIFT, C, exec, $colorPicker
  - bind = SUPER, N, exec, /home/kallum/.config/hypr/scripts/gedit.sh
  - bind = SUPER SHIFT, N, exec, $fileManager /home/kallum/Documents/
  - bind = SUPER, G, exec, $gameLauncher
  - bind = SUPER SHIFT, S, exec, qs -c noctalia-shell ipc call settings toggle


## notifications
  - bind = SUPER SHIFT, ALT_L, exec, qs -c noctalia-shell ipc call notifications toggleHistory
  - bind = SUPER, Z, exec, qs -c noctalia-shell ipc call notifications clear
  - bind = SUPER SHIFT, Z, exec, qs -c noctalia-shell ipc call notifications toggleDND


## Sick open fastfetch, cava, cmatrix, and tty-clock
  - bind = SUPER, T, exec, ~/.config/hypr/scripts/sickass-terminal-open.sh


## Screenshot
  - bind = , print, exec, quickshell -c hyprquickshot -n


## Media Controls
  - bind = SUPER, M, exec, lollypop
  - bind = SUPER SHIFT, M, exec, qs -c noctalia-shell ipc call media playPause
  - bind = SUPER SHIFT, Comma, exec, playerctl previous
  - bind = SUPER SHIFT, Period, exec, playerctl next
  - bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
  - bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-


## Mute and Deafen
  - bind = ,ALT_R,exec,sh -c 'pactl set-source-mute @DEFAULT_SOURCE@ toggle && if pactl get-source-mute @DEFAULT_SOURCE@ | grep -q "yes"; then notify-send "Muted" "Microphone is now muted"; else notify-send "Unmuted" "Microphone is now unmuted"; fi'
  - bind = ,CONTROL_R,exec,sh -c 'pactl set-sink-mute @DEFAULT_SINK@ toggle && pactl set-source-mute @DEFAULT_SOURCE@ toggle && sink_mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk "{print \$2}"); if [ "$sink_mute" = "yes" ]; then notify-send "Deafen" "You are now Deafened"; else notify-send "Undeafened" "You are now Undeafened"; fi'


## Workspace Controls
  - bind = SUPER, 1, exec, $moveWorkspace 1
  - bind = SUPER, 2, exec, $moveWorkspace 2
  - bind = SUPER, 3, exec, $moveWorkspace 3
  - bind = SUPER, 4, exec, $moveWorkspace 4
  - bind = SUPER, 5, exec, $moveWorkspace 5
  - bind = SUPER, 6, exec, $moveWorkspace 6
  - bind = SUPER, 7, exec, $moveWorkspace 7
  - bind = SUPER, 8, exec, $moveWorkspace 8
  - bind = SUPER, 9, exec, $moveWorkspace 9
  - bind = SUPER, 0, exec, $moveWorkspace 10
  - bind = SUPER SHIFT, 1, movetoworkspacesilent, 1
  - bind = SUPER SHIFT, 2, movetoworkspacesilent, 2
  - bind = SUPER SHIFT, 3, movetoworkspacesilent, 3
  - bind = SUPER SHIFT, 4, movetoworkspacesilent, 4
  - bind = SUPER SHIFT, 5, movetoworkspacesilent, 5
  - bind = SUPER SHIFT, 6, movetoworkspacesilent, 6
  - bind = SUPER SHIFT, 7, movetoworkspacesilent, 7
  - bind = SUPER SHIFT, 8, movetoworkspacesilent, 8
  - bind = SUPER SHIFT, 9, movetoworkspacesilent, 9
  - bind = SUPER SHIFT, 0, movetoworkspacesilent, 10
  - bind = SUPER, V, togglespecialworkspace,vesktopSpace
  - bind = SUPER, left, movefocus, l
  - bind = SUPER, right, movefocus, r
  - bind = SUPER, up, movefocus, u
  - bind = SUPER, down, movefocus, d



## Window Control Binds
  - bind = SUPER, C, killactive
  - bind = SUPER SHIFT, D, exec, $toggleDesktop; qs -c noctalia-shell ipc call bar toggle
  - bind = SUPER, f, fullscreen
  - bind = SUPER SHIFT, f, fullscreenstate, 0 3
  - bind = SHIFT ALT, Space, togglefloating,
  - bind = SUPER, J, togglesplit, # dwindle
  - bindm = SUPER, mouse:272, movewindow
  - bindm = SUPER, mouse:273, resizewindow
