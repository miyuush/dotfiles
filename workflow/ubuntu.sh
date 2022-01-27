echo "✅ Install required packages"
sudo apt update
sudo apt upgrade
sudo apt install -y build-essential file

echo "✅Install Homebrew"
. ./install_scripts/homebrew.sh

echo "✅Set config files"
. ./install_scripts/config_files.sh
