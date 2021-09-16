cp .bash_aliases /home/adrian/.bash_aliases
cp .bashrc /home/adrian/.bashrc
cp .profile /home/adrian/.profile
cp ../git/.gitconfig /home/adrian/.gitconfig
cp .tmux.conf /home/adrian/.tmux.conf

source /home/adrian/.bash_aliases
source /home/adrian/.bashrc
source /home/adrian/.profile

sudo apt-get install curl
if type -p curl > /dev/null; then
    echo "curl Installed"
else
    echo "curl FAILED TO INSTALL!!!"
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
if type -p brew > /dev/null; then
    echo "brew Installed"
else
    echo "brew FAILED TO INSTALL!!!"
fi

export DOTFILES_PATH='/home/adrian/gitProjects/dotfiles'
export OS_LINUX_PATH="$DOTFILES_PATH/os/linux"
source "functions.sh"
import_apps