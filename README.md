# dotfiles

dotfiles for mainly [fish](https://fishshell.com/), [neovim](https://neovim.io/) users!

<div align="center">
<img src="https://user-images.githubusercontent.com/47440342/152688712-6fe7893b-ec71-4d67-94d9-bdfab46cf328.gif">
</div>

## Usage

### For Ubuntu

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/miyuush/dotfiles/master/setup.sh)"
```

### [Fisher](https://github.com/jorgebucaran/fisher)

```sh
# Install Fisher
curl -sL https://git.io/fisher | source

# Install Fish plugin
fisher update
```

## Environment

* Shell: bash, [fish](https://fishshell.com/)
* Prompt: [starship](http://starship.rs/ja-jp/s)
* Package Manager: [Homebrew](https://brew.sh/index_ja)
* Editor: [neovim](https://neovim.io/)
  * Plugin Manager: [vim-plug](https://github.com/junegunn/vim-plug)
  * LSP Plugin: [coc.nvim](https://github.com/neoclide/coc.nvim) 
* Terminal Multiplexer: tmux
* Commands
  * modern `ls`: [exa](https://github.com/ogham/exa)
  * `cat` with syntax highlight: [bat](https://github.com/sharkdp/bat)
* Font: [Hackgen](https://github.com/yuru7/HackGen)
