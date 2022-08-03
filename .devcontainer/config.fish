if status is-interactive
    # Commands to run in interactive sessions can go here
end

# path
set -x EDITOR vim
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH
set -x PATH /usr/local/go/bin $PATH
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

source $HOME/.config/fish/abbreviations.fish

