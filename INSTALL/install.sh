chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles

. ./brew-install.sh
# . ./brew.sh

brew tap thoughtbot/formulae
brew install rcm

env RCRC=$HOME/dotfiles-local/rcrc rcup
