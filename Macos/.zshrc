### Profiles

autoload -Uz compinit
compinit

# -------------------------------- #
# Custom alias
# -------------------------------- #

alias cdd='cd ~/projects/cq-enterprise-frontend/'
alias bi='brew install'
alias bs='brew search'
alias bu='brew update&&brew upgrade'
alias rc='code --new-window ~/.zshrc'
alias cls='clear'

alias d='nr dev'
alias b='nr build'
alias s='nr start'

alias gco='git checkout'
alias gcob='git checkout -b'
alias gb='git branch'
alias gbd='git branch -d'

# Go to project root
alias grt='cd "$(git rev-parse --show-toplevel)"'

# -------------------------------- #
# Directories

# `~/i` for my projects
# `~/r` for reproductions
# -------------------------------- #

function i() {
  cd ~/projects/i/$1
}
function repros() {
  cd ~/projects/r/$1
}
function dir() {
  mkdir $1 && cd $1
}

# autocomplete for directories
compdef _complete_dirs i
_complete_dirs() {
  local dirs=($(ls ~/projects/i/))
  _describe 'command' dirs
}

# -------------------------------- #
# Set up environment
# -------------------------------- #

# pnpm
export PNPM_HOME="/Users/wayz/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# go
export GOPATH="/Users/wayz/dev/go"
export PATH="$PATH:$GOPATH/bin"
export GOPROXY="https://goproxy.cn"
export GO111MODULE="on"

# -------------------------------- #
# Set up plugins
# -------------------------------- #

# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi
# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-fast-syntax-highlighting
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# starship
eval "$(starship init zsh)"