# 'ls' commands build off one another
alias ls='ls -GF'
alias l='ls -1'
alias la='ls -a'
alias ll='ls -laGF'

# dotfiles
alias zz='vim ~/.bashrc'
alias nc='vim ~/.vimrc'
alias so='source ~/.bashrc'
 
# nav
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Make
alias mk='make'
alias mkc='make clean'
alias mka='make all'

# tmux
alias ts='tmux new-session -s'
alias tls='tmux ls'
alias ta='tmux a -t'
alias tj='tmux switch -t'

# git - uses some functions below
alias gaa='git add --all --verbose'
alias ga='git add --verbose'
alias push='git push'
alias gb='git branch -v'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gs='git status && work_in_progress'

# Forty commits fits nicely in a _correctly_ sized terminal window.
alias gl='git log -n 20 --graph --decorate --oneline'
alias gll='git log --graph --decorate --oneline --all'
alias gla='git log --graph --decorate --oneline --exclude=refs/remotes/* --all'
alias glp='git log -n 1 --format=medium'
alias pull='git pull'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip-- [skip ci]"'
alias gunwip='git rev-list --max-count=1 --format="%s" HEAD | grep -q "\--wip--" && git reset HEAD~1'

# general
alias vi='vim'
alias py='python3'
alias psu='pacman -Suy'

# Windows aliases
alias psh='/c/Program\ Files/PowerShell/7/pwsh.exe'
alias exp='explorer.exe .'
alias rg='/mingw64/bin/rg.exe'
alias dotnet='/c/Program\ Files/dotnet/dotnet.exe'
alias formatcs='dotnet csharpier format'
alias cf='clang-format.exe --style=file -i'

# alias gch='git checkout && work_in_progress'
function gch() {
    git checkout $1
    work_in_progress
}

# Warn if the current branch is a WIP
function work_in_progress() {
    command git -c log.showSignature=false log -n 1 2>/dev/null | grep -q -- "--wip--" && echo "WIP!!"
}
