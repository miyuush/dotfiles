# see: https://docs.microsoft.com/ja-jp/windows/dev-environment/javascript/nodejs-on-wsl
/bin/bash -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh)"
exec $SHELL -l
nvm install --lts
