cd ~/dotfiles

echo "✅ Set config files"
mkdir -p $(pwd)/.config/fish
ln -sf $(pwd)/.devcontainer/config.fish/ ~/.config/fish/
ln -sf $(pwd)/.devcontainer/abbreviations.fish/ ~/.config/fish/
ln -sf $(pwd)/.tmux/ ~
ln -sf $(pwd)/.bash_aliases ~/.bash_aliases
ln -sf $(pwd)/.profile ~/.profile
ln -sf $(pwd)/.bashrc ~/.bashrc
ln -sf $(pwd)/.gitconfig ~/.gitconfig
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf

