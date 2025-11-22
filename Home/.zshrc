# ========== p10k ========== #
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source /home/kallum/.zplug/init.zsh

# ========== Greeting ========== #
# echo "\033[38;5;219m"
# echo -e "⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷\n⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇\n⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽\n⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕\n⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕\n⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕\n⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄\n⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕\n⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿\n⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿\n⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟\n⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠\n⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙\n⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣\n\ndon't cawe nyani you wanted to do, (ꈍᴗꈍ) p-pwease do me instead" | awk '{ z = '$(tput cols)' - length; y = int(z / 2); x = z - y; printf "%*s%s%*s\n", x, "", $0, y, ""; }'
# echo "\033[0m"

# ========== Pre-Init ========= #
typeset -U path cdpath fpath manpath

export ZPLUG_HOME=/home/kallum/.zplug
source $ZPLUG_HOME/init.zsh

# ========== zplug plugins ========== #

# zstyle ":zplug:tag" depth 1

# zplug "baliestri/pnpm.plugin.zsh", as:plugin, use:_pnpm
zplug "zdharma-continuum/fast-syntax-highlighting", as:plugin
# zplug "zsh-users/zsh-autosuggestions", as:plugin
# zplug "zsh-users/zsh-completions", as:plugin
zplug "olets/zsh-abbr", as:plugin
zplug "marlonrichert/zsh-autocomplete"

zplug "romkatv/powerlevel10k", as:theme


# ========== Post-Init ========== #
if ! zplug check; then
  zplug install
fi

zplug load
autoload -U compinit && compinit

if test -n "$KITTY_INSTALLATION_DIR"; then
  autoload -Uz -- "$KITTY_INSTALLATION_DIR"/shell-integration/zsh/kitty-integration
  kitty-integration
  unfunction kitty-integration
fi

# ========== History ========== #
HISTSIZE="10000"
SAVEHIST="10000"

HISTFILE="$HOME/.zsh_history"
mkdir -p "$(dirname "$HISTFILE")"

# ========== Zsh Options ========== #
setopt HIST_FCNTL_LOCK
setopt HIST_IGNORE_DUPS
unsetopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY
unsetopt BEEP

# ========== Custom Bindings ========== #
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# ========== Custom Aliases ========== #

# if zplug info "olets/zsh-abbr" > /dev/null; then
  # abbr a -S -g nixreb="sudo nixos-rebuild switch --flake ~/Documents/nix-config#ruby-250G7-nixos --impure" > /dev/null
  # abbr a -S -g nixdel="sudo nix-env --delete-generations --profile /nix/var/nix/profiles/system old" > /dev/null
  # abbr a -S -g "nix develop"="nix develop -c \$SHELL" > /dev/null
# fi

alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'
alias la='ls -a'
alias ls='eza --icons=auto'

# ========== Custom Functions ========== #
cl() {
  if [ -z "$1" ]; then
    echo "Usage: cdls <directory>"
    return 1
  fi
  cd "$1" && ls
}

ca() {
  if [ -z "$1" ]; then
    echo "Usage: cdls <directory>"
    return 1
  fi
  cd "$1" && la
}

export PATH="$HOME/.spicetify:$PATH"

# Created by `pipx` on 2025-10-10 21:59:07
export PATH="$PATH:/home/kallum/.local/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
