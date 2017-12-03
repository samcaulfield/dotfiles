[[ -f ~/.Xresources ]] && xrdb -merge ~/dotfiles/.Xresources

setxkbmap ie

exec gnome-session

