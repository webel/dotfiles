# Fetch and install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Clone thoughtbot/dotfiles into home
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles

# Clone patched fonts for Powerline users
git clone https://github.com/powerline/fonts.git
. ./fonts/install.sh
# Installs brew if not present
. ./brew-install.sh
# Uncomment to install a range of utilities
# . ./brew.sh
# Install the latest zsh version, the default one is outdated
brew install zsh

# Set default shell for current user to (hopefully) latest zsh
# NOTE: Not fool proof, what if there are multiple named versions :S
sudo echo $(which /usr/local/bin/zsh-*) >> /etc/shells
chsh -s $(which /usr/local/bin/zsh-*)

# Install rcm for dotfile handling a'la thoughtbot
brew tap thoughtbot/formulae
brew install rcm

# Run rcup, symlinking the files and directories (not appended with a dot)
# in ~/dotfiles/ and ~/dotfiles-local/ to user home.
env RCRC=$HOME/dotfiles-local/rcrc rcup
