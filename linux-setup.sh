# Create code and play directories
mkdir -p ~/code/play
 
# Install zsh and reopen terminal
sudo apt-get install zsh
chsh -s /bin/zsh
 
# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh
 
# Install git
sudo apt-get install git
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
rvm install 2.1.2
 
# Configure vim
sudo apt-get install vim-gnome
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
 
# Create tmp file path for vim
mkdir -p ~/.tmp
 
sudo apt-get install imagemagick
sudo apt-get install silversearcher-ag
sudo apt-get install tmux

# Install nvm and node.js
curl https://raw.githubusercontent.com/creationix/nvm/v0.10.0/install.sh | sh
nvm install 0.11
nvm alias default 0.11

