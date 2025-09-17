#neofetch
#Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
	zsh-syntax-highlighting 
)

source $ZSH/oh-my-zsh.sh
# User configuration

# two commands to install zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
#source /home/benno/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias doc="docker"
alias doc-start="sudo systemctl start docker.service"
alias doc-stop="sudo systemctl stop docker.service"
alias pipi="pip install"
alias py="python3"
alias python="python3"
alias ls="ls -a"
alias cls="clear"
alias reload="source ~/.zshrc"
alias re="cls ; reload"
alias install="sudo nala install"
alias remove="sudo nala remove"
alias venv=". venv/bin/activate || . .env/bin/activate"
alias nvenv="deactivate"
alias cat="lolcat"
alias bat="batcat -P"
alias lsg="ls -a | egrep"
alias open="bash -x /usr/bin/xdg-open"
alias update="sudo nala update ; sudo nala upgrade ; flatpak update -y" # i think nala returns !0 on update even if a only a single failed.. 
alias play="ffplay -v 0 -nodisp -autoexit"
alias ranger='. ranger'
alias ra="ranger"
alias code="codium"

alias bonsai="cbonsai -t 0.00004 -l -m \"Hello there :)\" -p -L"
alias rndl="py -c \"print(__import__('random').choice(__import__('sys').stdin.readlines()).strip())\""
alias cord="py -c \"R, h = __import__('sys').argv[1:]; R, h = int(R), int(h); print(2*__import__('math').sqrt(2*R*h-(h*h)))\""
alias cpc="xclip -sel c < "
alias say="fortune | cowsay | lolcat"
alias sql="py -c \"import sqlite3 as s3; import sys; import pprint; cn = s3.connect('test.db'); c=cn.cursor(); arg = sys.argv[1]; c.execute(arg); pprint.pprint(c.fetchall()); cn.commit(); cn.close()\""
alias poe="poetry"
alias poer="poetry run python3"
alias fmeta="exiftool -all:all= -overwrite_original"

### Terminal startup print
say
#bonsai $(($LINES * 1.1))

dump() {
    if [ -z "$1" ]; then
        echo "Usage: dump <output_file>"
        return 1
    fi

    if xclip -selection c -t image/png -o > "$1"; then
        echo "[OK] Clipboard saved to image file '$1'"
    elif xclip -selection c -o > "$1"; then
        echo "[OK] Clipboard saved to text file '$1'"
    else
        echo "Failed to save clipboard to file. No text or image found."
        return 1
    fi
}

yeet(){
  git add .
  if [ "$1" != "" ]
    then
    git commit -m "$1"
    else
    export rnd_msg=$(bat $HOME/code/configuration/gitcommit.txt | rndl)
    git commit -m $rnd_msg #"Added and/or removed something maybe"
  fi
  git push   
}

alias moon="forecast moon"
forecast(){
	curl wttr.in/"$1"
}

countdown() {
    start="$(( $(date '+%s') + $1))"
    while [ $start -ge $(date +%s) ]; do
        time="$(( $start - $(date +%s) ))"
        printf '%s\r' "$(date -u -d "@$time" +%H:%M:%S)"
        sleep 0.1
    done
}

stopwatch() {
    start=$(date +%s)
    while true; do
        time="$(( $(date +%s) - $start))"
        printf '%s\r' "$(date -u -d "@$time" +%H:%M:%S)"
        sleep 0.1
    done
}

# exa maps
export LS_COLORS="$LS_COLORS:ow=34;40"
alias ls="exa --grid --all --icons"
alias ll="exa --long --all --icons"
alias tree="exa --tree --level=3 --all --icons --ignore-glob='.git|__pycache__'"


# random freqtrade qol command
function fbt(){
  freqtrade backtesting -c config.json -s $1 --timerange=$2
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ranger
export VISUAL=vim;
export EDITOR=vim;


[ -f "/home/benno/.ghcup/env" ] && source "/home/benno/.ghcup/env" # ghcup-env
