#
# Cookbook Name:: chef_env_analytics
# Recipe:: setup
#
# Copyright (c) 2016 Anthony Carminati, All Rights Reserved.

## ----------
## Install latest version of CodeDeploy
## ----------
remote_file "#{Chef::Config[:file_cache_path]}/codedeploy-install.sh" do
  source "https://s3.amazonaws.com/aws-codedeploy-us-east-1/latest/install"
  mode "0744"
  owner "root"
  group "root"
end

execute "install_codedeploy_agent" do
  command "#{Chef::Config[:file_cache_path]}/codedeploy-install.sh auto"
  user "root"
end

## ----------
## Initialize application directory
## ----------
# TODO: make initialized app directory dynamic, feed params from attributes file
directory '/opt/appdir/' do
  owner 'root'
  group 'root'
  recursive true
end
