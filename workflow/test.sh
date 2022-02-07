is_exist(){
   if which $1 ; then
      echo "✅ $1"
   else
      echo "❌ $1"
   fi
}

commands=("fish" "brew" "nvim" "fzf" "exa" "bat" "ghq" "tig")

for c in ${commands}
do
    is_exist $c
done

is_exist_file(){
    if [ -f "$1" ]; then
        echo "✅ $1"
    else 
        echo "❌ $1"
    fi
}

for i in ~/.config/fish/config.fish ~/.config/starship.toml
do
    is_exist_file $i
done

is_exist_dir(){
    if [ -d "$1" ]; then
        echo "✅ $1"
    else 
        echo "❌ $1"
    fi
}

for i in  ~/.config/fish ~/.config/nvim 
do
    is_exist_dir $i
done

is_exist_link(){
    if [ -h "$1" ]; then
        echo "✅ $1"
    else 
        echo "❌ $1"
    fi
}

for i in ~/.config ~/.gitconfig ~/Brewfile
do
    is_exist_link $i
done
