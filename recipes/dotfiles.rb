#
# Cookbook Name:: thirdwave-dotfiles
# Recipe:: dotfiles
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

templates = %w{.bashrc .bash_profile .bash_prompt .aliases .vimrc}

templates.each do |template|
  template "/home/vagrant/#{template}" do
    source "#{template}.erb"
    owner "vagrant"
    group "vagrant"
  end
end

directories = %w{.vim .vim/backups .vim/swaps .vim/undodir}

directories.each do |directory|
  directory "/home/vagrant/#{directory}" do
    owner "vagrant"
    group "vagrant"
    action :create
  end
end
