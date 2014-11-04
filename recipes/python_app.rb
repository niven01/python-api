#                                                                                                                                                                                                                                          
# Cookbook Name:: python-api
# Recipe:: default
#
# Copyright 2014, Rackspace
#

if platform_family?('rhel')
  include_recipe 'yum'
  include_recipe 'yum-epel'
  include_recipe 'yum-ius'
elsif platform_family?('debian')
  include_recipe 'apt'
end
include_recipe 'build-essential'
include_recipe 'git'

include_recipe 'python::package'
include_recipe 'python::pip'
python_pip 'setuptools' do
  action :upgrade
  version node['python']['setuptools_version']
end

include_recipe 'python'
include_recipe 'uwsgi'
python_pip 'flask'

