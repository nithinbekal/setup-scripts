
# Install packages
sudo apt-get install -y curl                     \
                        firefox                  \
                        git                      \
                        imagemagick              \
                        silversearcher-ag        \
                        tmux                     \
                        ubuntu-restricted-extras \
                        vim-gnome                \
                        vlc                      \
                        zsh

# Create code and play directories
mkdir -p ~/code/play

# Install git
sudo apt-get install git
git config --global user.name "Nithin Bekal"
git config --global user.email "nithinbekal@gmail.com"

# zsh configuration
chsh -s /bin/zsh
curl -L http://install.ohmyz.sh | sh

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby
rvm install 2.1.2

# My dotfiles
git clone https://github.com/nithinbekal/dotfiles.git ~/code/dotfiles
~/code/dotfiles/install

# Configure vim
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
mkdir -p ~/.tmp

# Install nvm and node.js
curl https://raw.githubusercontent.com/creationix/nvm/v0.10.0/install.sh | sh
nvm install 0.11
nvm alias default 0.11
npm install -g yo

# Generate ssh keys
mkdir -p ~/.ssh
ssh-keygen -t rsa -C "nithinbekal@gmail.com"
