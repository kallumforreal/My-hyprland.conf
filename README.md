# My-hyprland.conf
My version of CrypticCreators Hyprland Config


# Prerequisites
hyprpolkitagent
<br>
kservice
<br>
hypridle
<br>
hyprlock
<br>
hyprpicker
<br>
hyprshot
<br>
kwallet
<br>
kitty
<br>
dolphin
<br>
fuzzel
<br>
gedit
<br>
zen browser
<br>
vesktop

# Installing prerequisites on Arch
Pacman:
<br>
sudo pacman -S kitty dolphin fuzzel gedit hyprpolkitagent


yay:
<br>
yay -S kservice hypridle hyprlock hyprpicker hyprshot kwallet zen-browser-bin vesktop
<br>
# Folder/File Locations
hypr, fastfetch, fuzzel - ~/.config
<br>
.p10k.zsh, .zshrc - /home/youruser
<br>
.p10k.zsh and .zshrc do not come with a . in the front, add one
<br>
# Keybinds
//Session Binds
<br>
Ctrl, alt, delete = exit
<br>
<br>
//Program Binds
<br>
Super, Q = Terminal
<br>
Super, R = Fuzzel
<br>
Super, E = filemanager
<br>
Super Shift, E = filemanager ~/.config
<br>
Super Shift, C = hyprpicker
<br>
Super, N = New txt in Documents
<br>
Super Shift, N = filemanager Documents
<br>
<br>
//Window Control Binds
<br>
Alt, f4 = killactive
<br>
Super, C = killactive
<br>
Super Shift, D = Toggles desktop
<br>
Super, F = Fullscreen
<br>
Shift alt, space = toggle floating
<br>
Super, J = toggle split
<br>
<br>
//Screenshot
<br>
print = hyprshot region
<br>
<br>
//Workspace Controls
<br>
SUPER, 1, exec, $moveWorkspace 1
<br>
SUPER, 2, exec, $moveWorkspace 2
<br>
SUPER, 3, exec, $moveWorkspace 3
<br>
SUPER, 4, exec, $moveWorkspace 4
<br>
SUPER, 5, exec, $moveWorkspace 5
<br>
SUPER, 6, exec, $moveWorkspace 6
<br>
SUPER, 7, exec, $moveWorkspace 7
<br>
SUPER, 8, exec, $moveWorkspace 8
<br>
SUPER, 9, exec, $moveWorkspace 9
<br>
SUPER, 0, exec, $moveWorkspace 10
<br>
SUPER SHIFT, 1, movetoworkspacesilent, 1
<br>
SUPER SHIFT, 2, movetoworkspacesilent, 2
<br>
SUPER SHIFT, 3, movetoworkspacesilent, 3
<br>
SUPER SHIFT, 4, movetoworkspacesilent, 4
<br>
SUPER SHIFT, 5, movetoworkspacesilent, 5
<br>
SUPER SHIFT, 6, movetoworkspacesilent, 6
<br>
SUPER SHIFT, 7, movetoworkspacesilent, 7
<br>
SUPER SHIFT, 8, movetoworkspacesilent, 8
<br>
SUPER SHIFT, 9, movetoworkspacesilent, 9
<br>
SUPER SHIFT, 0, movetoworkspacesilent, 10
<br>
SUPER, v = togglespecialworkspace,vesktopSpace
<br>
SUPER, left, movefocus, l
<br>
SUPER, right, movefocus, r
<br>
SUPER, up, movefocus, u
<br>
SUPER, down, movefocus, d
<br>
<br>
//Media Controls
<br>
bindel = ,XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
<br>
bindel = ,XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
<br>
bindel = ,XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
<br>
bindel = ,XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
<br>
bindl = , XF86AudioNext, exec, playerctl next
<br>
bindl = , XF86AudioPause, exec, playerctl play-pause
<br>
bindl = , XF86AudioPlay, exec, playerctl play-pause
<br>
bindl = , XF86AudioPrev, exec, playerctl previous
