# {{{
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

ZSH_THEME="intheloop"
zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh


# User configuration

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
# alias ohmyzsh="mate ~/.oh-my-zsh"
#old prompt
###########################################################################
# PROMPT='
# %B%(?.%F{012}√%f.%F{009}%?%f) %F{010}%/%f
# %F{010}❯%f '


# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# zstyle ':vcs_info:git:*' formats '%F{012}(%b)%f%F{002}%r%f'
# zstyle ':vcs_info:*' enable git
# 
# color=always
##########################################################################
# }}}
function mcd() {
	mkdir $1
	cd $1
}

function bigstart() {
	omz update
    multipull
    brew update
    brew upgrade
}

function multipull() {
    find . -mindepth 1 -maxdepth 3 -type d -print -exec git -C {} pull \;
}

function multipush() {
    find . -mindepth 1 -maxdepth 3 -type d -print -exec git -C {} push \;
}

function superPush() {
    find . -mindepth 1 -maxdepth 4 -type d -print -exec git -C {} add -A \;
    find . -mindepth 1 -maxdepth 4 -type d -print -exec git -C {} commit -m 'big push' \;
    find . -mindepth 1 -maxdepth 4 -type d -print -exec git -C {} push \;
}

# Make and run C program where executable is called a.out
function rn() { make
    ./a.out
}

# Docker commands to rebuild and push server image to docker repository
function rebuild-server() {
    sudo docker stop server3203;
    sudo docker system prune -f;
    sudo docker rmi boatwrong/server3203;
    sudo docker build -t boatwrong/server3203 .;
    sudo docker push boatwrong/server3203
}

alias la='ls -aGF'
alias ll='ls -laGF'
alias l='ls -GF'
alias lll='ls -laGF | less'
alias status='git status'
alias py='python3'
alias apps='cd ~/repos/reactApps'
alias zz='vim ~/.zshrc'
alias so='source ~/.zshrc'
alias a='cd ~/home'
alias d='./a.out'
alias c='clear'
alias mk='make'
alias mka='make all'
alias mkc='make clean'
alias home='cd ~/home'
alias email='open /Applications/Microsoft\ Outlook.app'
alias spotify='open /Applications/Spotify.app'
alias sleep='pmset sleepnow'
alias minify='~/minify.zsh'
alias dots='cd ~/home/dotfiles'
alias gs='git status'
alias gl='git log --all --graph --decorate --oneline'
alias push='git push'
alias pull='git pull'
alias gc='git commit -m'
alias gaa='git add -Av'
alias gcb='git checkout -b'
alias pip='pip3'
alias ivm='vim'
alias precap='cd /Users/bryantboatright/Library/CloudStorage/OneDrive-UniversityofOklahoma\(1\)/4163_team_files'
alias gaa='git add -Av'
alias gch='git checkout'
alias sshserver='ssh -i "~/.ssh/web-server.pem" admin@ec2-3-225-80-65.compute-1.amazonaws.com'
alias gcc='clang'
