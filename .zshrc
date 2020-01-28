# Env settings
EDITOR=vim
TZ=America/New_York
LANG=en_US.UTF-8


################    Exports     ################

# 256 iTerm Colors
[[ "$TERM" == "xterm" ]] && export TERM=xterm-256color vim

# export PATHs
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"

# add rbenv to path
export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# reduce the <ESC> timeout for use with vim mode
export KEYTIMEOUT=1

# export basic env settings
export EDITOR TZ LANG

# Initialize JEnv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


################    Bundles     ################

# load antigen
source /usr/local/share/antigen/antigen.zsh

# load oh-my-zsh bundles
antigen use oh-my-zsh
antigen theme steeef # set the prompt theme

# keep plugins in order to avoid conflicts
antigen bundles <<-Bundles

    z
    git
    sublime
    history-substring-search
    zsh-users/zsh-syntax-highlighting
    # tarruda/zsh-autosuggestions          # must be bundled last

Bundles


###############    Aliases     ################

# Git shortcuts
alias ggp="ggpull"
alias gyb="git rev-parse --abbrev-ref HEAD | pbcopy"
function gfb {
  git branch -a | 
    grep $1 | 
    awk '{print $1}' | 
    sed 's/remotes\/origin\///' | 
    xargs -n1 git checkout
}

# vim shortcuts
alias vi="vim"
alias v="vi"

# General shortcuts
alias cl="clear"


################   Initialize   ################

# Autosuggestions
# zle-line-init() { zle autosuggest-start }
# zle -N zle-line-init
# bindkey '^T' autosuggest-toggle

# Add keybindings for history-substring-search so that it works with vi-mode
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# install all zsh bundles
antigen apply
