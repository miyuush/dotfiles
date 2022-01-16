if status is-interactive
    # Commands to run in interactive sessions can go here
end

# path
set -x PATH /usr/local/go/bin $PATH
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH
set -x PATH $HOME/.cargo/bin $PATH

# ghq + fzf
function ghq_fzf_repo -d 'Repository search'
  ghq list --full-path | fzf --reverse --height=100% | read select
  [ -n "$select" ]; and cd "$select"
  echo " $select "
  commandline -f repaint
end

# fish key bindings
function fish_user_key_bindings
  bind \cg ghq_fzf_repo
end

starship init fish | source
