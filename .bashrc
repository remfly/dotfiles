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

if [ -d "${HOME}/bin" ] ; then
    PATH="${HOME}/bin:${PATH}"
fi

### Environment Variables ###
export EDITOR="/usr/bin/nvim"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export WINEPREFIX="${HOME}/.local/share/grapejuice/prefixes/fluxus"
export WINEESYNC=0

### Shell Functions ###
function nuke_wine () {
    path="${HOME}/.local/share/grapejuice/prefixes"
    prefixes=("player" "studio" "fluxus")

    for prefix in "${prefixes[@]}"
    do
        WINEPREFIX="${path}/${prefix}" wineserver -k;
    done

    echo "Nuked all Wine instances!"
}

function update_mirrors () {
    save_path="/etc/pacman.d/mirrorlist"
    count=50

    sudo reflector --latest "${count}" --sort rate --protocol https --save "${save_path}"
}

### Aliases ###

# Miscellaneous
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias utc="date +%s | tr --delete '\n' | xclip -i -sel cli"
alias public-ip="host myip.opendns.com resolver1.opendns.com"
alias ip="ip -c"

# ls-to-exa
alias ls="exa -larih --color=always --group-directories-first"
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
alias pipes="pipes -t 1 -f 60 -R"

### Nord Dircolors Setup ###
test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

### The Fuck setup ###
eval "$(thefuck --alias)"

### Starship Prompt ###
eval "$(starship init bash)"
