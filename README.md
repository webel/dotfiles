# Evie's dotfiles

This is a companion repo to [thoughtbot/dotfiles][1] including an install script for oh-my-zsh and for thoughtbot's dotfiles, and some useful brew installs.

## Includes
- Install script for `thoughtbot/dotfiles`
- Somewhat sensible installs for brew
- config for zshrc (see `thoughtbot/dotfiles` for description on how they treat local dotfiles)
  - my config is basically the default created by `oh-my-zsh`, although with these plugins: `git` `vagrant` `python` `pip` `docker` `autopep8` `brew` `celery` `docker-comp` `ose` `docker` `httpie` `yarn` `node` `npm` `osx` `pep8` `postgres` `redis-cli` `rust` `sudo` `s` `sh-agent`

## Install
- clone the repo

      > git clone git://github.com/webel/dotfiles.git ~/dotfiles-local

- run `INSTALL/install.sh`
      > . ~/dotfiles-local/INSTALL/install.sh

  + sets default shell to `zsh`
  + installs `oh-my-zsh`
  + installs brew if not present
  + clones Github repo [`thoughtbot/dotfiles`][1] into `~/dotfiles`
  + install `rcrc` (for `thoughtbot/dotfiles`)
  + set `RCRC` env and runs `rcup` (for `thoughtbot/dotfiles` aswell as the linking of these local dotfiles)

  + optionally run default brew installs by uncommenting the two lines in the script (to see the default installs checkout the `brew.sh` script, I've found the list somewhere a long while back and didn't save the resource)

- (only for **hyperapp**) navigate to `dotfiles-local/hyper_plugins` and run `npm install`

## Links
- [thoughtbot/dotfiles][1]

#### Hyper
- [Hyper tabs enhanced][2]

#### ZSH
- [Powerline patched fonts][3]
- [Agnoster theme][4]
- [Install latest ZSH with brew][5]

[1]:https://github.com/thoughtbot/dotfiles
[2]:https://github.com/henrikdahl/hyper-tabs-enhanced
[3]:https://github.com/powerline/fonts
[4]:https://github.com/agnoster/agnoster-zsh-theme
[5]:https://rick.cogley.info/post/use-homebrew-zsh-instead-of-the-osx-default/
