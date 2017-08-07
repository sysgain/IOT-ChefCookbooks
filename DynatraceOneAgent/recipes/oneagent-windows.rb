#
# Cookbook:: dynatraceoneagent
# Recipe:: oneagent-windows
#
# Copyright:: 2017, Dynatrace


download_link = node['download_link']

windows_package 'DynatraceOneAgent' do
  source 'https://github.com/akramullak-sysgain/Dynatrace-OneAgent-Windows/raw/master/Dynatrace-OneAgent-Windows-1.121.201.msi'
  installer_type :msi
  action :install
end
