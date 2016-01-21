#
# Cookbook Name:: chef_env_analytics
# Recipe:: configure
#
# Copyright (c) 2016 Anthony Carminati, All Rights Reserved.

## ----------
## Starts codedeploy agent
## ----------
service "codedeploy-agent" do
  action [:enable, :start]
end

## ----------
## Install/Update Python packages via python-pip
## ----------
# node[:pip_python_packages].each_pair do |pkg, version|
#     execute "install-#{pkg}" do
#         command "pip install #{pkg}==#{version}"
#         not_if "[ `pip freeze | grep #{pkg} | cut -d'=' -f3` = '#{version}' ]"
#     end
# end

# Versionless
node[:pip_python_packages].each_pair do |pkg, version|
  execute "install-#{pkg}" do
    command "pip install #{pkg}"
    # not_if "[ `pip freeze | grep #{pkg} | cut -d'=' -f3` = '#{version}' ]"
  end
end

# node[:pip_python_packages].each do |pkg|
#     execute "install-#{pkg}" do
#         command "pip install #{pkg}"
# #        not_if "[ `pip freeze | grep #{pkg} | cut -d'=' -f3` = '#{version}' ]"
#     end
# end
