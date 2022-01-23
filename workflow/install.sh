echo "Install fish"
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

echo "Install starship"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

echo "Install etc"
sudo apt install -y neovim tmux

echo "Install Golang"
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install -y golang-go
