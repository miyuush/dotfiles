cd ~/dotfiles

echo "✅ Set config files"
ln -sf $(pwd)/.devcontainer/*.fish/ ~
ln -sf $(pwd)/.tmux/ ~
ln -sf $(pwd)/.bash_aliases ~/.bash_aliases
ln -sf $(pwd)/.profile ~/.profile
ln -sf $(pwd)/.bashrc ~/.bashrc
ln -sf $(pwd)/.gitconfig ~/.gitconfig
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf

