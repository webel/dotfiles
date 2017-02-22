chsh -s $(which zsh)

# . ./brew-install.sh
. ./brew.sh

brew tap thoughtbot/formulae
brew install rcm

env RCRC=$HOME/dotfiles/rcrc rcup
