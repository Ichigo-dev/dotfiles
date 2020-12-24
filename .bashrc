export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

PS1_COLOR_BEGIN="\[\e[1;34m\]"
PS1_COLOR_END="\[\e[m\]"
PS1_HOST_NAME="Ubuntu"
export PS1="${PS1_COLOR_BEGIN}[\u@\${PS1_HOST_NAME}\w]${PS1_COLOR_END}\\$ "

PATH="$PATH:/usr/bin/vim"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ichigo/.sdkman"
[[ -s "/home/ichigo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ichigo/.sdkman/bin/sdkman-init.sh"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias ovim='vim'
alias vim='nvim'
