Default Dotfile
--

## Setup

clone this repository and execute this command (need git)

```
cd ~
git clone git@github.com:ksilverwall/dotfiles.git
zsh dotfiles/install.sh
```

## Appendix: Setup git


### Install git first

Use homebrew. See https://brew.sh/

```bash
brew install git
git config --global user.name <name>
git config --global user.email <mail>
```

### Register sshkey

```
ssh-keygen -t ed25519
```

Register pub key `~/.ssh/id_ed25519` to https://github.com/settings/keys
