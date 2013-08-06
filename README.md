# Thirdwave Dotfiles [![Build Status](https://secure.travis-ci.org/thirdwavellc/chef-thirdwave-dotfiles.png)](http://travis-ci.org/thirdwavellc/chef-thirdwave-dotfiles)

Installs common packages and settings for developer productivity. Currently targeted specifically toward vagrant machines.

# Requirements

## Cookbooks

* apt
* build-essential
* mercurial
* git
* htop
* vim
* zsh

# Attributes

More flexibility will be added in the future, however currently these are configurable:

**User**

* `node['thirdwave_dofiles']['user']` - target user
* `node['thirdwave_dotfiles']['user_home']` - user's home directory

**Dotfile Configurations**

* `node['thirdwave_dotfiles']['prompt']` - set to true to include the prompt recipe*
* `node['thirdwave_dotfiles']['vim']` - set to true to include the vim recipe*
* `node['thirdwave_dotfiles']['zsh']` - set to true to include the zsh recipe*

_* Alternatively, you can add the recipe to your runlist_

# Recipes

## default

Adds the following dotfiles:

* `.bashrc`
* `.bash_profile`
* `.aliases`

Additional dotfile configurations can be included by setting the appropriate node attributes, or including the recipes to your runlist.

## packages

Installs common packages. Includes:

* apt
* build-essential
* mercurial
* git
* htop
* vim

## aliases

Installs `.aliases` and any additional application-specific alias files (e.g. `.aliases_liferay`) based on your runlist.

## profile

Installs `.bash_profile`.

## vim

Installs `.vimrc` and related directories.

## zsh

Installs zsh and oh-my-zsh, and configures it to be the default shell.

# Application-specifc Aliases

The `.bash_profile` includes multiple alias files (`.aliases*`). Currently we have a template for Liferay-specific aliases. This, and other future templates like it, will be automatically included as long the cookbook is in your runlist (by checking the node attribute, e.g.: `node['liferay']`).

# Author

Author:: Thirdwave, LLC (<support@thirdwavellc.com>)
