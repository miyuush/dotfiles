is_exist_command(){
   if which $1 ; then
      echo "✅ $1"
   else
      echo "❌ $1"
   fi
}

commands=("fish" "brew" "nvim" "fzf" "exa" "bat" "ghq" "tig")

for c in ${commands[@]}
do
    is_exist_command $c
done

is_exist_file(){
    if [ -f "$1" ]; then
        echo "✅ $1"
    else 
        echo "❌ $1"
    fi
}

files=("~/.config/fish/config.fish" "~/.config/nvim/init.vim" "~/.config/starship.toml")

for f in ${files[@]}
do
    is_exist_file $f
done

is_exist_dir(){
    if [ -d "$1" ]; then
        echo "✅ $1"
    else 
        echo "❌ $1"
    fi
}

dirs=("~/.config/fish" "~/.config/nvim" "~/.tmux")

for d in ${dirs[@]} 
do
    is_exist_dir $d
done

is_exist_link(){
    if [ -h "$1" ]; then
        echo "✅ $1"
    else 
        echo "❌ $1"
    fi
}

links=("~/.config" "~/.bashrc" "~/.gitconfig" ".profile" ".tmux.conf" "Brewfile")

for l in ${links[@]}
do
    is_exist_link $l
done
