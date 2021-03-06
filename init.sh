#! /bin/bash

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install node
brew install tmux
brew install --cask google-chrome
brew install --cask neteasemusic
brew install --cask wechat
brew install --cask  qq
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask alacritty
brew install --cask alfred

# relax reminder  
brew install --cask stretchly

brew install neovim
brew install git
brew install fzf
brew install ripgrep
brew install fd
brew install jq
brew install autojump
# A command line client for MySQL that can do auto-completion and syntax highlighting.
brew install mycli
# Create and view interactive cheat sheets for *nix commands
brew install cheat

brew install task
brew install wget
brew install ack
brew install tree

# Remove outdated versions from the cellar.
brew cleanup

# oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

# autojump
echo '[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh' >> ~/.zshrc
source ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# tmux
cd 
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
source ~/.zshrc

# prepare folders
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/nvim

mkdir -p ~/temp
mkdir -p ~/workspace
mkdir -p ~/bin

# global npm package
npm i -g yarn
npm i -g typescript
npm i -g prettier
npm i -g nrm

WORKDIR=`pwd`

cd $HOME

cp $HOME/.zshrc $WORKDIR/zsh
cp $HOME/.tmux.conf.local $WORKDIR/tmux
cp $HOME/.config/alacritty/alacritty.yml $WORKDIR/alacritty
cp -r $HOME/bin $WORKDIR
