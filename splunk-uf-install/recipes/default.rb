#
# Cookbook:: splunk-uf-install
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'chocolatey_install' do
  guard_interpreter :powershell_script
  code 'iex ((New-Object System.Net.WebClient).DownloadString("https://chocolatey.org/install.ps1"))'
  
end
chocolatey_package 'splunkforwarder' do
  version '6.5.1'
  options "--params=\"RECEIVING_INDEXER=localhost:9997 WINEVENTLOG_APP_ENABLE=1 WINEVENTLOG_SEC_ENABLE=1 WINEVENTLOG_SYS_ENABLE=1 WINEVENTLOG_SET_ENABLE=1\""
  #options "--params=\"RECEIVING_INDEXER=localhost:9997\""
end
