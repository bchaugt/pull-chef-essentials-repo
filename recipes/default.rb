#
# Cookbook:: pull-essentials-windows-repo
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'git::default'

case node['platform']
when 'windows'
  include_recipe 'pull-chef-essentials-cookbooks::windows'
else
  include_recipe 'pull-chef-essentials-cookbooks::linux'
end
