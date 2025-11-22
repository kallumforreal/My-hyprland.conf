# kallumhyprland.conf
This is my Hyprland config!


# Prerequisites
[hyprpolkitagent](https://github.com/hyprwm/hyprpolkitagent)
<br>
[kservice](https://github.com/KDE/kservice)
<br>
[hypridle](https://github.com/hyprwm/hypridle)
<br>
[hyprpicker](https://github.com/hyprwm/hyprpicker)
<br>
[hyprquickshot](https://github.com/jamdon2/hyprquickshot)
<br>
[kwallet](https://apps.kde.org/kwalletmanager5/)
<br>
[kitty](https://github.com/kovidgoyal/kitty)
<br>
[dolphin](https://apps.kde.org/dolphin/)
<br>
[gedit](https://gedit-text-editor.org/)
<br>
[zen browser](https://zen-browser.app/)
<br>
[vesktop](https://github.com/Vencord/Vesktop)
<br>
[noctalia-shell-git](https://github.com/noctalia-dev/noctalia-shell?tab=readme-ov-file)
<br>
[quickshell](https://github.com/quickshell-mirror/quickshell)
<br>
[lollypop](https://gitlab.gnome.org/World/lollypop)
<br>
[steam](https://store.steampowered.com/about/)
<br>
[hypremoji](https://github.com/Musagy/hypremoji)
<br>
[zplug/zsh](https://github.com/zplug/zplug)
<br>
[cava](https://github.com/karlstav/cava)
<br>
[cmatrix](https://github.com/abishekvashok/cmatrix)
<br>
[tty-clock](https://github.com/xorg62/tty-clock)
<br>
[playerctl](https://github.com/altdesktop/playerctl)
<br>
[fastfetch](https://github.com/fastfetch-cli/fastfetch)
<br>
[matugen](https://github.com/InioX/matugen)

# Installing prerequisites on Arch
Pacman:
<br>
```md
sudo pacman -Sy --needed kitty dolphin gedit hyprpolkitagent lollypop quickshell steam cmatrix cava playerctl fastfetch matugen
```

yay:
<br>
```md
yay -Sy --needed kservice hypridle hyprpicker kwallet zen-browser-bin vesktop noctalia-shell-git hypremoji tty-clock
```

hyprquickshot:
<br>
```md
git clone https://github.com/jamdon2/hyprquickshot ~/.config/quickshell/hyprquickshot
```

zplug/zsh
<br>
```md
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
```


# Installation
<details>
  <summary><strong>Manual</strong></summary>

<br>

**Clone the Repository:**

```bash
git clone https://github.com/kallumforreal/kallumhyprland.conf
```
**Folder/File Locations:**
`hypr & fastfetch → ~/.config`
<br>
`.p10k.zsh, .zshrc → /home/{YOURUSER}`
</details>



# Keybinds
//Session Binds
<br>
bind = CTRL ALT, Delete, exit,
<br>
bind = SUPER, L, exec, qs -c noctalia-shell ipc call lockScreen lock
<br>
bind = SUPER, CTRL ALT, exec, systemctl --user start hyprpolkitagent
<br>
<br>


//Program Binds
<br>
bind = SUPER, Q, exec, $terminal zsh -c "fastfetch; exec zsh"
<br>
bind = SUPER, R, exec, $menu
<br>
bind = SUPER, E, exec, $fileManager /home/kallum
<br>
bind = SUPER SHIFT, E, exec, $fileManager /home/kallum/.config/
<br>
bind = SUPER, B, exec, $browser
<br>
bind = SUPER SHIFT, C, exec, $colorPicker
<br>
bind = SUPER, N, exec, /home/kallum/.config/hypr/scripts/gedit.sh
<br>
bind = SUPER SHIFT, N, exec, $fileManager /home/kallum/Documents/
<br>
bind = SUPER, G, exec, $gameLauncher
<br>
bind = SUPER SHIFT, S, exec, qs -c noctalia-shell ipc call settings toggle
<br>
<br>


//notifications
<br>
bind = SUPER SHIFT, ALT_L, exec, qs -c noctalia-shell ipc call notifications toggleHistory
<br>
bind = SUPER, Z, exec, qs -c noctalia-shell ipc call notifications clear
<br>
bind = SUPER SHIFT, Z, exec, qs -c noctalia-shell ipc call notifications toggleDND
<br>
<br>


//Sick open fastfetch, cava, cmatrix, and tty-clock
<br>
bind = SUPER, T, exec, ~/.config/hypr/scripts/sickass-terminal-open.sh
<br>
<br>


//Screenshots
<br>
bind = , print, exec, quickshell -c hyprquickshot -n
<br>
<br>


//Media Controls
<br>
bind = SUPER, M, exec, lollypop
<br>
bind = SUPER SHIFT, M, exec, qs -c noctalia-shell ipc call media playPause
<br>
bind = SUPER SHIFT, Comma, exec, playerctl previous
<br>
bind = SUPER SHIFT, Period, exec, playerctl next
<br>
bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
<br>
bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
<br>
<br>


//Mute and Deafen
<br>
bind = ,ALT_R,exec,sh -c 'pactl set-source-mute @DEFAULT_SOURCE@ toggle && if pactl get-source-mute @DEFAULT_SOURCE@ | grep -q "yes"; then notify-send "Muted" "Microphone is now muted"; else notify-send "Unmuted" "Microphone is now unmuted"; fi'
<br>
bind = ,CONTROL_R,exec,sh -c 'pactl set-sink-mute @DEFAULT_SINK@ toggle && pactl set-source-mute @DEFAULT_SOURCE@ toggle && sink_mute=$(pactl get-sink-mute @DEFAULT_SINK@ | awk "{print \$2}"); if [ "$sink_mute" = "yes" ]; then notify-send "Deafen" "You are now Deafened"; else notify-send "Undeafened" "You are now Undeafened"; fi'
<br>
<br>


//Workspace Controls
<br>
bind = SUPER, 1, exec, $moveWorkspace 1
<br>
bind = SUPER, 2, exec, $moveWorkspace 2
<br>
bind = SUPER, 3, exec, $moveWorkspace 3
<br>
bind = SUPER, 4, exec, $moveWorkspace 4
<br>
bind = SUPER, 5, exec, $moveWorkspace 5
<br>
bind = SUPER, 6, exec, $moveWorkspace 6
<br>
bind = SUPER, 7, exec, $moveWorkspace 7
<br>
bind = SUPER, 8, exec, $moveWorkspace 8
<br>
bind = SUPER, 9, exec, $moveWorkspace 9
<br>
bind = SUPER, 0, exec, $moveWorkspace 10
<br>
bind = SUPER SHIFT, 1, movetoworkspacesilent, 1
<br>
bind = SUPER SHIFT, 2, movetoworkspacesilent, 2
<br>
bind = SUPER SHIFT, 3, movetoworkspacesilent, 3
<br>
bind = SUPER SHIFT, 4, movetoworkspacesilent, 4
<br>
bind = SUPER SHIFT, 5, movetoworkspacesilent, 5
<br>
bind = SUPER SHIFT, 6, movetoworkspacesilent, 6
<br>
bind = SUPER SHIFT, 7, movetoworkspacesilent, 7
<br>
bind = SUPER SHIFT, 8, movetoworkspacesilent, 8
<br>
bind = SUPER SHIFT, 9, movetoworkspacesilent, 9
<br>
bind = SUPER SHIFT, 0, movetoworkspacesilent, 10
<br>
bind = SUPER, V, togglespecialworkspace,vesktopSpace
<br>
bind = SUPER, left, movefocus, l
<br>
bind = SUPER, right, movefocus, r
<br>
bind = SUPER, up, movefocus, u
<br>
bind = SUPER, down, movefocus, d



//Window Control Binds
<br>
bind = ALT, F4, killactive
<br>
bind = SUPER, C, killactive
<br>
bind = SUPER SHIFT, D, exec, $toggleDesktop; qs -c noctalia-shell ipc call bar toggle
<br>
bind = SUPER, f, fullscreen
<br>
bind = SUPER SHIFT, f, fullscreenstate, 0 3
<br>
bind = SHIFT ALT, Space, togglefloating,
<br>
bind = SUPER, J, togglesplit, # dwindle
<br>
bindm = SUPER, mouse:272, movewindow
<br>
bindm = SUPER, mouse:273, resizewindow
