fpath+=("$(brew --prefix)/share/zsh/site-functions")

# pure
autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure

# alias
alias ll='ls -latr'
alias n='nvim'

alias inv='nvim $(fzf -m --preview="bat --color=always {}")'

# PATH
export PATH="$(brew --prefix rustup)/bin:$PATH"
export PATH="/Users/hhayk/.cargo/bin:$PATH"

export PATH="/Users/hhayk/Library/Application Support/Coursier/bin:$PATH"
export PATH="/Users/hhayk/Library/Application Support/Coursier/bin/metals:$PATH"

# auto-suggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# fzf
source <(fzf --zsh)
