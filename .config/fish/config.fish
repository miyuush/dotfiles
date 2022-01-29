if status is-interactive
    # Commands to run in interactive sessions can go here
end

# path
set -x EDITOR nvim
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH
set -x PATH /usr/local/go/bin $PATH
set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
set -x PATH /home/linuxbrew/.linuxbrew/sbin $PATH
set -x PATH $HOME/.cargo/bin $PATH
set -x FZF_CTRL_T_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
set -x FZF_CTRL_T_OPTS '--preview "bat --color=always --line-range :500 {}"'

source $HOME/.config/fish/abbreviations.fish

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
  bind \r enter_ls
end

starship init fish | source
fzf_key_bindings
