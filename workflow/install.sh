echo "✅Install fish"
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish
fish

echo "✅Install fisher" 
curl -sL https://git.io/fisher | source

echo "✅Install starship"
bash <(curl -fsSL https://starship.rs/install.sh) --yes

echo "✅Install etc"
sudo apt install -y neovim tmux

echo "✅Install golang"
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install -y golang-go

echo "✅Set config files"
rm -rf ~/.config
ln -sf $PWD/.config/ ~
ln -sf $PWD/.tmux/ ~
ln -sf $PWD/.bash_aliases ~/.bash_aliases
ln -sf $PWD/.bash_profile ~/.bash_profile
ln -sf $PWD/.bashrc ~/.bashrc
ln -sf $PWD/.gitconfig ~/.gitconfig
ln -sf $PWD/.tmux.conf ~/.tmux.conf
