#
# Cookbook Name:: chef-capybara-webkit
# Recipe:: default
#
# Copyright (C) 2013 Rich Grundy
#

case node['platform']
when 'ubuntu'
  if node['platform_version'].to_f < 10.10
    package 'libqt4-dev'
  else
    package 'libqtwebkit-dev'
  end
end
