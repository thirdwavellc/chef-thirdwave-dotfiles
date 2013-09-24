#
# Cookbook Name:: thirdwave-dotfiles
# Recipe:: default
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

include_recipe "thirdwave-dotfiles::packages"

templates = %w{.bash_profile .bashrc}

templates.each do |current_template|
  template "#{node['thirdwave_dotfiles']['user_home']}/#{current_template}" do
    source "#{current_template}.erb"
    action :create
  end
end

include_recipe "thirdwave-dotfiles::aliases"
include_recipe "thirdwave-dotfiles::prompt" if node['thirdwave_dotfiles']['prompt']
include_recipe "thirdwave-dotfiles::vim" if node['thirdwave_dotfiles']['vim']
include_recipe "thirdwave-dotfiles::zsh" if node['thirdwave_dotfiles']['zsh']
include_recipe "thirdwave-dotfiles::tmux" if node['thirdwave_dotfiles']['tmux']
