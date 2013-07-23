# thirdwave-dotfiles cookbook

Installs common packages and settings for developer productivity. Currently targeted specifically toward vagrant machines.

# Requirements

## Cookbooks

- apt
- build-essential
- mercurial
- git
- htop
- vim
- zsh

# Attributes

More flexibility will be added in the future, however currently these are configurable:

- node['thirdwave-dotfiles']['aliases']['liferay'] - includes useful aliases for Liferay management
- node['thirdwave-dotfiles']['zsh'] - set to true to include the zsh recipe. Alternatively, you could just add 'thirdwave-dotfiles::zsh' to your runlist.

# Recipes

## default

Includes all recipes. Currently the zsh recipe uses an attribute (set to false by default). Other recipes may be conditionally included in the future.

## dotfiles

Adds the following dotfiles:

- .aliases
- .bash_profile
- .bash_prompt
- .bashrc
- .vimrc

## packages

Installs common packages. Includes:

- apt
- build-essential
- mercurial
- git
- htop
- vim

## zsh

Installs zsh and oh-my-zsh, and configures it to be the default shell.

# Author

Author:: Thirdwave, LLC (<support@thirdwavellc.com>)
