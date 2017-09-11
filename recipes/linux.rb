#
# Cookbook:: pull-chef-essentials-cookbooks
# Recipe:: linux
#
# Copyright:: 2017, The Authors, All Rights Reserved.
directory '/tmp/chef-essentials-repo' do
  recursive true
  action :create
end

directory node['pull-chef-essentials-cookbooks']['linux_target_cookbook_dir'] do
  recursive true
  action :create
end

git '/tmp/chef-essentials-repo' do
  repository node['pull-chef-essentials-cookbooks']['linux_repo']
  revision 'master'
  action :sync
end

execute 'move repo files' do
  command 'sudo mv /tmp/chef-essentials-repo/cookbooks/* ' + node['pull-chef-essentials-cookbooks']['linux_target_cookbook_dir']
  action :run
end

directory '/tmp/chef-essentials-windows-repo' do
  recursive true
  action :delete
end
