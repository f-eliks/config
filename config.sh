read -p "change the gitconfig file? [Y/n] " git

mkdir "$HOME/.ssh"
cp config "$HOME/.ssh/"
cp starship.toml "$HOME/.config/"
cp .aliasrc "$HOME/"
cp .zshrc "$HOME/"
cp .vimrc "$HOME/"
case $git in [yY])
	cp .gitconfig "$HOME/"
	git config --global color.ui true
esac
source "$HOME/.zshrc"
sudo localectl set-x11-keymap de
echo "finished"
