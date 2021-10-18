Default Dotfile
--

## Setup

### STEP1: Install git

Setup git first

See https://brew.sh/

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
```

### Register sshkey

```
ssh-keygen
cat ~/.ssh/id_rsa_pub
```

## Install

clone this repository and execute this command

```
zsh dotfiles/install.sh
```
