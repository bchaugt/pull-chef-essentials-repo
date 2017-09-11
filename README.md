# pull-essentials-windows-repo Cookbook

Simple cookbook that will pull down the completed Chef Essentials - Windows training cookbooks and copy them over to the specified user cookbook directory (as defined by an attribute).

# Attributes

`node['pull-essentials-windows-repo']['target_cookbook_dir']` - target destination directory for downloaded Chef Essentials - Windows training cookbooks (default is `C:\Users\vagrant\cookbooks`)
