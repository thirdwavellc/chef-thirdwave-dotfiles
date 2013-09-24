#
# Cookbook Name:: thirdwave-dotfiles
# Recipe:: tmux-session
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

node['thirdwave_dotfiles']['tmux_sessions'].each do |session|
	session[:windows].each_with_index do |window, i|
		exec_name = "tmux-session-#{session[:name]}-window-#{window[:name]}"
		sess_name = i == 0 ? "-s #{session[:name]}" : "-t #{session[:name]}"
		win_name = "-n #{window[:name]}"
		win_cmd = window[:command] ? "'#{window[:command]}'" : ""
		as_user = "su -- #{node['thirdwave_dotfiles']['user']}"

		if i == 0
			execute exec_name do
				command "#{as_user} -c \"tmux new-session #{sess_name} #{win_name} -d #{win_cmd}\""
				action :run
			end
		else
			execute exec_name do
				command "#{as_user} -c \"tmux new-window #{sess_name} #{win_name} #{win_cmd}\""
				action :run
			end
		end
	end
end
