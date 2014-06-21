# Create code and play directories
mkdir -p ~/code/play
 
# Install brew
# Might need to install XCODE command line tools
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
 
# Install zsh and reopen terminal
brew install zsh
chsh -s /bin/zsh
 
# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh
 
# Install git
brew install git
git config --global user.name "Nithin Bekal"
git config --global user.email "nithinbekal@gmail.com"
 
# Install my dotfiles
git clone https://github.com/nithinbekal/dotfiles.git code/dotfiles
cd code/dotfiles
rake install
cd
 
# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby
rvm install 2.0.0
 
# Configure vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
 
# Create tmp file path for vim
mkdir -p ~/.tmp
 
brew install ctags
brew install imagemagick
brew install the_silver_searcher
brew install tmux

# Use cask for installing GUI apps
brew install caskroom/cask/brew-cask

brew cask install dropbox
brew cask install seil
brew cask install sublime-text
 
