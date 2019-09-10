#! /bin/bash

git clone git@github.com:AntonNiklasson/dotfiles.git .dotfiles

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
	coreutils \
	diff-so-fancy \
	docker \
	git-extras \
	httpie \
	hub \
	mas \
	node \
	postgresql \
	sequel-pro \
	tmux \
	tree \
	vim \
	yarn \
	zsh \
	zsh-completions \
	the_silver_searcher \
	p4v
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap homebrew/cask-drivers
brew cask install --force \
	alfred \
	appcleaner \
	dropbox \
	fantastical \
	firefox \
	flux \
	font-source-code-pro \
	hyper \
	iterm2 \
	logitech-options \
	notion \
	postico \
	skim \
	slack \
	spectacle \
	spotify \
	telegram \
	visual-studio-code \
	brave-browser \
	macmediakeyforwarder \
	nordvpn \
	kap \
	runjs \
	inter-power-gadget

# Install software from the Mac App Store
mas install \
	585829637			\ # Todoist
	1176895641		\ # Spark

# Install packages from npm
yarn global add \
	alfred-fkill \
	alfred-npms \
	alfred-loremipsum \
	alfred-ip

# Setup zsh
echo "/usr/local/bin/zsh" >> /etc/shells
chsh -s /usr/local/bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Link up files.
ln -is ~/.dotfiles/links/zshrc ~/.zshrc
ln -is ~/.dotfiles/links/vimrc ~/.vimrc
ln -is ~/.dotfiles/links/gitignore ~/.gitignore
ln -is ~/.dotfiles/links/gitconfig ~/.gitconfig
ln -is ~/.dotfiles/links/tmux.conf ~/.tmux.conf

# macOS Preferences
defaults write com.apple.dock autohide-time-modifier -int 0
killall Dock

source ~/.zshrc
