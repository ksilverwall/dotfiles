#
# Load Secret Environment Variable First
#
if [ -e "$file_path" ]; then
  source ${HOME}/.zsh_secrets
fi

#
# GNU Commands
#
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="${HOME}/bin:$PATH"

#
# Nodejs Settings
#
eval "$(nodenv init -)"
export PATH="/usr/local/opt/bzip2/bin:$PATH"

#
# Golang Settings
#

# needed to pull from private repository
export GOPRIVATE=github.com/${GH_PRIVATE_ORGANIZATION}
export PATH=$PATH:$(go env GOPATH)/bin

#
# direnv settings
#
eval "$(direnv hook zsh)"

#
# Autoload Settings
#
fpath=(
  ${HOME}/.zsh/completions
  ${fpath}
)

autoload -Uz compinit
compinit
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

#
# General Aliases
#
alias ll='ls -alFG'
