#
# Cookbook:: splunk-uf-install
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

chocolatey_package 'splunkforwarder' do
  version '6.5.1'
  options "--params=\"RECEIVING_INDEXER=localhost:9997\""
end