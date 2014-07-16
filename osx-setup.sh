
# Install brew
# Might need to install XCODE command line tools
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Install zsh and reopen terminal
brew install zsh
brew install git
brew install ctags
brew install imagemagick
brew install the_silver_searcher
brew install tmux

# Use cask for installing GUI apps
brew install caskroom/cask/brew-cask

brew cask install dropbox
brew cask install seil
brew cask install sublime-text
brew cask install iterm2

# Create code and play directories
mkdir -p ~/code/play

# Configure git
git config --global user.name "Nithin Bekal"
git config --global user.email "nithinbekal@gmail.com"

# Configure zsh
chsh -s /bin/zsh
curl -L http://install.ohmyz.sh | sh

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby

# My dotfiles
git clone git@github.com:nithinbekal/dotfiles.git ~/code/dotfiles
~/code/dotfiles/install

# Configure vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
mkdir -p ~/.tmp

# Setup node.js
curl https://raw.githubusercontent.com/creationix/nvm/v0.10.0/install.sh | sh
nvm install 0.11
nvm alias default 0.11
npm install -g yo

# Generate ssh keys
mkdir -p ~/.ssh
ssh-keygen -t rsa -C "nithinbekal@gmail.com"
