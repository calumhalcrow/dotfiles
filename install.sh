DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
ln -s "$DIR"/.vim ~
ln -s "$DIR"/.vimrc ~
ln -s "$DIR"/.bash_profile ~/.bash_profile
ln -s "$DIR"/.bashrc ~
ln -s "$DIR"/.git-completion.bash ~
ln -s "$DIR"/.gitconfig.global ~/.gitconfig
ln -s "$DIR"/.gitignore.global ~/.gitignore
ln -s "$DIR"/.tmux.conf ~
