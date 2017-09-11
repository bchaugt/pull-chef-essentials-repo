# pull-chef-essentials-cookbooks Cookbook

Simple cookbook that will pull down the completed Chef Essentials - Windows training cookbooks and copy them over to the specified user cookbook directory (as defined by an attribute).

# Attributes

`node['pull-chef-essentials-cookbooks']['windows_target_cookbook_dir']` - target destination directory for downloaded Chef Essentials - Windows training cookbooks (default is `C:\Users\vagrant\cookbooks`)

`node['pull-chef-essentials-cookbooks']['linux_target_cookbook_dir']` - target destination directory for downloaded Chef Essentials - Linux training cookbooks (default is `/home/vagrant/cookbooks/`)
