#
# Cookbook:: pull-essentials-windows-repo
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'git::default'

directory 'C:\temp\chef-essentials-windows-repo' do
  recursive true
  action :create
end

directory node['pull-chef-essentials-cookbooks']['target_cookbook_dir'] do
  recursive true
  action :create
end

git 'C:\temp\chef-essentials-windows-repo' do
  repository 'https://github.com/chef-training/chef-essentials-windows-repo.git'
  revision 'master'
  action :sync
end

powershell_script 'move repo files' do
  code 'cp C:\temp\chef-essentials-windows-repo\cookbooks\* ' + node['pull-chef-essentials-cookbooks']['target_cookbook_dir']
  action :run
end

# directory 'C:\temp' do
#   recursive true
#   action :delete
# end
