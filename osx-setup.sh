
# Install homebrew - this will also install xcode command line tools
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ack ctags git imagemagick mongodb tmux zsh vim macvim elixir

# Use cask for installing GUI apps
brew install caskroom/cask/brew-cask
brew cask install dropbox iterm2 seil sublime-text

# Create code directory
mkdir -p ~/code

# Git
git config --global user.name "Nithin Bekal"
git config --global user.email "nithinbekal@gmail.com"

# Mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

# Configure zsh
chsh -s /bin/zsh
curl -L http://install.ohmyz.sh | sh

# My dotfiles
git clone https://github.com/nithinbekal/dotfiles.git ~/code/dotfiles
~/code/dotfiles/install

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby

# Configure vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
mkdir -p ~/.tmp

# Setup node.js
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
nvm install 6.0
nvm alias default 6.0

# Generate ssh keys
mkdir -p ~/.ssh
ssh-keygen -t rsa -C "nithinbekal@gmail.com"
