echo "✅ Install required packages"
sudo apt update
sudo apt upgrade
sudo apt install -y build-essential file make

echo "✅ Set config files"
. ./install_scripts/config_files.sh

echo "✅ Install Homebrew"
. ./install_scripts/homebrew.sh

echo "✅ Install Go Tools"
make -f ./install_scripts/go_tools install-go-tools

echo "✅ Set fzf key bindings"
. ./install_scripts/fzf_key_binds.sh

echo "✅ Install Vim-Plug"
. ./install_scripts/vim-plug.sh

echo "✅ Install Node.js"
. ./install_scripts/nvm.sh

echo "✅ Test Configuration"
. ./workflow/test.sh
