Default Dotfile
--

## Setup

1. Clone this repository with `--bare` option

```
git clone --bare git@github.com:ksilverwall/dotfiles.git $HOME/.dotfiles
```

2. Enable alias to checkout

```
echo "alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> ~/.zshrc
source ~/.zshrc
```

3. Hide unused file

```
dotfiles config status.showUntrackedFiles no
```

4. restore dotfiles

```
dotfiles checkout
```
