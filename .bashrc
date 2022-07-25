### Defaults ###
[[ $- != *i* ]] && return

### Environment Variables ###
export EDITOR="/usr/bin/nvim"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

### Aliases ###
# Misc
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias mirror="su -c 'reflector --latest 50 --sort rate --protocol https --save /etc/pacman.d/mirrorlist'"
alias ip="ip -c"
alias public-ip="host myip.opendns.com resolver1.opendns.com"
alias sudo="doas"
alias doas="doas"

# ls-to-exa
alias ls="exa -larih --color=always --group-directories-first"
alias la="exa -a --color=always --group-directories-first"
alias ll="exa -l --color=always --group-directories-first"
alias tree="exa -aT --color=always --group-directories-first"

# Colorize grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Shortening some commands
alias cl="clear"
alias re="source ~/.bashrc && reset"
alias py="python"
alias copy="xclip -i -sel cli"

# YouTube download options
alias yta-mp3="yt-dlp -x --audio-format mp3 --audio-quality 0 -f bestaudio"
alias yta-wav="yt-dlp -x --audio-format wav --audio-quality 0 -f bestaudio"
alias ytv-best="yt-dlp -f bestaudio+bestvideo -f mp4"

# Fun
alias doge="doge | lolcat -a -d 100 -s 100 -p 1"
alias fortune="fortune | cowsay | lolcat"
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"

### The Fuck setup ###
eval "$(thefuck --alias)"

### Starship Prompt ###
eval "$(starship init bash)"
