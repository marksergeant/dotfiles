#!/bin/bash

# Download and install brew (If it doesn't already exist)

# Check if Brew is installed first.

if [ -e "/usr/local/Homebrew" ]; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update brew
brew update

# https://gist.github.com/millermedeiros/6615994 is the reference for this.
# Also look at: https://github.com/donnemartin/dev-setup#osxprepsh-script
# and: https://gist.github.com/millermedeiros/6615994

# Install the required apps
brew install angband
brew install aspell
brew install awscli
brew install bdw-gc
brew install byobu
brew install catimg
brew install cntlm
brew install coreutils
brew install corkscrew
brew install fpp
brew install freetype
brew install gdbm
brew install gettext
brew install glib
brew install gmp
brew install gnu-sed
brew install gnutls
brew install grip
brew install highlight
brew install htop
brew install icu4c
brew install iftop
brew install jpeg
brew install libevent
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libpng
brew install libpq
brew install libssh2
brew install libtasn1
brew install libtool
brew install libunistring
brew install libvirt
brew install libxml2
brew install libyaml
brew install lua
brew install midnight-commander
brew install mobile-shell
brew install mosh
brew install mtr
brew install mutt
brew install ncurses
brew install nethogs
brew install nettle
brew install newt
brew install nginx
brew install openssl
brew install openssl@1.1
brew install p11-kit
brew install p7zip
brew install pari
brew install passenger
brew install pcre
brew install perl
brew install pgcli
brew install homebrew/php/php70
brew install pixman
brew install popt
brew install postgresql
brew install protobuf
brew install putty
brew install python
brew install python3
brew install qemu
brew install readline
brew install reattach-to-user-namespace
brew install ruby
brew install s-lang
brew install scala
brew install shpotify
brew install sqlite
brew install telnet
brew install tmux
brew install tokyo-cabinet
brew install transmission
brew install unixodbc
brew install vim
brew install w3m
brew install watch
brew install wget
brew install xz
brew install yajl
brew install zsh
brew install zsh-lovers

# Install all ansible related items
brew install ansible ansible-cmdb ansible-lint terraform-provisioner-ansible

# Install the required binaries

brew cask install atom
brew cask install boxer
brew cask install chrome-remote-desktop-host
brew cask install docker
brew cask install dropbox
brew cask install iterm2
brew cask install java
brew cask install mono-mdk
brew cask install one-password
brew cask install pinta
brew cask install setapp
brew cask install skype
brew cask install slack
brew cask install soda-player
brew cask install sourcetree
brew cask install spectacle
brew cask install spotify
brew cask install steam
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
brew cask install wkhtmltopdf

# quick look plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# For Windows testing:
# https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/
