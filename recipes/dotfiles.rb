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

template "/home/vagrant/.bashrc" do
  source ".bashrc.erb"
  owner "vagrant"
  group "vagrant"
end

template "/home/vagrant/.bash_profile" do
  source ".bash_profile.erb"
  owner "vagrant"
  group "vagrant"
end

template "/home/vagrant/.bash_prompt" do
  source ".bash_prompt.erb"
  owner "vagrant"
  group "vagrant"
end

template "/home/vagrant/.aliases" do
  source ".aliases.erb"
  owner "vagrant"
  group "vagrant"
end

template "/home/vagrant/.vimrc" do
  source ".vimrc.erb"
  owner "vagrant"
  group "vagrant"
end

directory "/home/vagrant/.vim" do
  owner "vagrant"
  group "vagrant"
  action :create
end

directory "/home/vagrant/.vim/backups" do
  owner "vagrant"
  group "vagrant"
  action :create
end

directory "/home/vagrant/.vim/swaps" do
  owner "vagrant"
  group "vagrant"
  action :create
end

directory "/home/vagrant/.vim/undodir" do
  owner "vagrant"
  group "vagrant"
  action :create
end
