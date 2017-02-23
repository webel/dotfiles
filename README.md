# Evie's dotfiles
**keywords** _mac_, _zsh_, *oh_my_zsh*, *brew.sh*

This is a companion repo to [thoughtbot/dotfiles][1] including an install script for oh-my-zsh and for thoughtbot's dotfiles, and some useful brew installs.

## Includes
- Install script for `thoughtbot/dotfiles`
- Somewhat sensible installs for brew and apt
- config for zshrc.local (see `thoughtbot/dotfiles` for description on how they treat local dotfiles)
  - my `config` is basically the default created by `oh-my-zsh`, although with these plugins: `git` `vagrant` `python` `pip` `docker` `autopep8` `brew` `celery` `docker-comp` `ose` `docker` `httpie` `yarn` `node` `npm` `osx` `pep8` `postgres` `redis-cli` `rust` `sudo` `s` `sh-agent`

## Install
- run `INSTALL/install.sh`
  + sets default shell to `zsh`
  + installs `oh-my-zsh`
  + installs brew if not present
  + install `rcrc`(for `thoughtbot/dotfiles`)
  + set `RCRC` env and runs `rcup` (for `thoughtbot/dotfiles` aswell as the linking of these local dotfiles)

  + optionally run default brew installs by uncommenting the two lines in the script (to see the default installs checkout the `brew.sh` script, I've found the list somewhere a long while back and didn't save the resource)


[1]:https://github.com/thoughtbot/dotfiles
