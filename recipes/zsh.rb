#
# Cookbook Name:: thirdwave-dotfiles
# Recipe:: zsh
#
# Copyright (C) 2013 Thirdwave, LLC
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "git"
include_recipe "zsh"

git "oh-my-zsh" do
  repository "git://github.com/robbyrussell/oh-my-zsh.git"
  destination "/home/vagrant/.oh-my-zsh"
  action :sync
end

execute "copy-zshrc" do
  command "cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc"
  action :run
end

execute "set-zsh-default" do
  command "chsh -s /usr/bin/zsh vagrant"
  action :run
end
