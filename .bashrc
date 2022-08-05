###############################################################
#                                                             #
#                                  __ _                       #
#              _ __ ___ _ __ ___  / _| |_   _                 #
#             | '__/ _ \ '_ ` _ \| |_| | | | |                #
#             | | |  __/ | | | | |  _| | |_| |                #
#             |_|  \___|_| |_| |_|_| |_|\__, |                #
#                                       |___/                 #
#                                                             #
#                                                             #
###############################################################
#                                                             #
#           https://github.com/remfly/dotfiles                #
#                                                             #
###############################################################

### Default Bash Settings ###
[[ $- != *i* ]] && return

### Environment Variables ###
export EDITOR="/usr/bin/nvim"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export WINEPREFIX="/home/remfly/.local/share/grapejuice/prefixes/fluxus"

### Aliases ###

# Misc
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias mirror="sudo reflector --latest 50 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias utc="date +%s | tr --delete '\n' | xclip -i -sel cli"
alias public-ip="host myip.opendns.com resolver1.opendns.com"
alias ip="ip -c"

# Roblox Wine Management
alias nukewine="WINEPREFIX=/home/remfly/.local/share/grapejuice/prefixes/player wineserver -k ; WINEPREFIX=/home/remfly/.local/share/grapejuice/prefixes/studio wineserver -k ; WINEPREFIX=/home/remfly/.local/share/grapejuice/prefixes/fluxus wineserver -k"
alias nukewineplayer='WINEPREFIX=/home/remfly/.local/share/grapejuice/prefixes/player wineserver -k'
alias nukewinestudio='WINEPREFIX=/home/remfly/.local/share/grapejuice/prefixes/studio wineserver -k'
alias nukewinefluxus='WINEPREFIX=/home/remfly/.local/share/grapejuice/prefixes/fluxus wineserver -k'

# ls-to-exa
alias ls="exa -larih --color=always --group-directories-first"
alias la="exa -a --color=always --group-directories-first"
alias ll="exa -l --color=always --group-directories-first"
alias tree="exa -aT --color=always --group-directories-first"

# Colorize grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Command Abbreviations
alias cl="clear"
alias re="source ~/.bashrc && reset"
alias py="python"
alias rngr="ranger"
alias copy="xclip -i -sel cli"

# yt-dlp Download Options
alias yta-mp3="yt-dlp -x --audio-format mp3 --audio-quality 0 -f bestaudio"
alias yta-wav="yt-dlp -x --audio-format wav --audio-quality 0 -f bestaudio"
alias ytv-best="yt-dlp -f bestaudio+bestvideo -f mp4"

# Fun
alias doge="doge | lolcat -a -d 100 -s 100 -p 1"
alias fortune="fortune | cowsay | lolcat"
alias rr="~/.config/scripts/roll.sh"

### The Fuck setup ###
eval "$(thefuck --alias)"

### Starship Prompt ###
eval "$(starship init bash)"
