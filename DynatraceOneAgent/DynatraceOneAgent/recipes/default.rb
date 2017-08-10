#
# Cookbook:: dynatraceoneagent
# Recipe:: default
#
# Copyright:: 2017, Dynatrace

#include_recipe "windows"

if platform_family?('windows')
  include_recipe 'DynatraceOneAgent::oneagent-windows'
else
  include_recipe 'DynatraceOneAgent::oneagent-linux'
end


