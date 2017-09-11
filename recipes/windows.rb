#
# Cookbook:: pull-chef-essentials-cookbooks
# Recipe:: windows
#
# Copyright:: 2017, The Authors, All Rights Reserved.
directory 'C:\temp\chef-essentials-windows-repo' do
  recursive true
  action :create
end

directory node['pull-chef-essentials-cookbooks']['windows_target_cookbook_dir'] do
  recursive true
  action :create
end

git 'C:\temp\chef-essentials-windows-repo' do
  repository 'https://github.com/chef-training/chef-essentials-windows-repo.git'
  revision 'master'
  action :sync
end

powershell_script 'copy repo files' do
  code 'cp C:\temp\chef-essentials-windows-repo\cookbooks\* ' + node['pull-chef-essentials-cookbooks']['windows_target_cookbook_dir']
  action :run
end

directory 'C:\temp\chef-essentials-windows-repo' do
  recursive true
  action :delete
end
