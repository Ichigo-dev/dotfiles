export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
PATH="$PATH:/usr/bin/vim"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ichigo/.sdkman"
[[ -s "/home/ichigo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ichigo/.sdkman/bin/sdkman-init.sh"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export DISPLAY=localhost:0.0
export "LIBGL_ALWAYS_INDIRECT=1"

 # prompt
PROMPT='%F{blue}%m@%n%f %F{red}%~%f$ '

# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF

# 補完
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit
compinit -u

# 色
autoload -Uz colors
colors

# vimキーバインド
bindkey -v

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
setopt auto_cd

# どこからでも参照できるディレクトリパス
cdpath=(~)

alias ovim='vim'
alias v='nvim'
alias memo='nvim ~/git/md'
alias so='source'
alias ...='cd ../..'
alias ....='cd ../../..'
alias g='cd ~/git'
alias py='python3'
alias r='bin/rails'
alias xset='export DISPLAY'

alias gs='git status'
alias gb='git branch'
alias gc='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'
