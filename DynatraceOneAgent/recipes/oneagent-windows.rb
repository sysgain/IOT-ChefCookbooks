#
# Cookbook:: DynatraceOneAgent
# Recipe:: oneagent-windows
#
# Copyright:: 2017, Dynatrace

#gem_package 'ruby-wmi'
#chef_gem 'ruby-wmi' do
#  action :install
#end

include_recipe "windows"

download_link = node['download_link']

remote_file "c:/dyna.exe" do
  source "#{download_link }"
  action :create
end

windows_package 'DynatraceOneAgent' do
  source "c:/dyna.exe"
  options '/qn'
  installer_type :custom
  action :install
end
