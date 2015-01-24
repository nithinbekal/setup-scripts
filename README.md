
# Setup scripts

This script installs the tools I use on my work computer.

* Exuberant Ctags
* Git
* Homebrew (OSX - also homebrew-cask for installing desktop apps)
* Imagemagick
* RVM (also installs latest ruby and 2.1.2)
* Seil (OSX - for mapping ESC to CapsLock key)
* Tmux
* Vim (uses vim-gnome on Elementary and Macvim on OSX)
* Zsh (default shell, with oh-my-zsh)

### Mac OSX

    curl -L https://raw.githubusercontent.com/nithinbekal/setup-scripts/master/osx-setup.sh | sh

### Elementary OS

Remove pantheon-terminal with gnome-terminal

    sudo apt-get install gnome-terminal
    sudo apt-get purge pantheon-terminal

Remove/comment the lines starting with OnlyShowIn in /usr/applications/Terminal

Run the installer script.

    sudo apt-get install -y curl
    curl https://raw.githubusercontent.com/nithinbekal/setup-scripts/master/linux-setup.sh | sh
