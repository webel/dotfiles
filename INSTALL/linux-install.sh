apt install zsh

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles

# CentOS rcm install
cd /etc/yum.repos.d/
wget http://download.opensuse.org/repositories/utilities/CentOS_6/utilities.repo
yum install rcm

env RCRC=$HOME/dotfiles-local/rcrc rcup
