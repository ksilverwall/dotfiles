function load_optional() {
  if [ -e "${1}" ]; then
    source ${1}
  fi
}

#
# Load Secret Environment Variable First
#
load_optional ${HOME}/.zsh_secrets

#
# GNU Commands
#
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="${HOME}/bin:$PATH"

#
# Nodejs Settings
#

# Nodejs has many version manager then setting up in .zsh_local

#
# Golang Settings
#

# needed to pull from private repository
if type go &> /dev/null; then
  export GOPRIVATE=github.com/${GH_PRIVATE_ORGANIZATION}
  export PATH=$PATH:$(go env GOPATH)/bin
fi

#
# direnv settings
#

if type direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

#
# Autoload Settings
#
fpath=(
  ${HOME}/.zsh/completions
  ${fpath}
)

autoload -Uz compinit
compinit

#
# General Path
#
export PATH=$PATH:~/bin
export PATH="/usr/local/sbin:$PATH"

#
# General Aliases
#
alias ll='ls -alFG'
alias ls='ls -G'

#
# Local Settings (Setting up in each devices)
#
load_optional "${HOME}/.zsh_local"
