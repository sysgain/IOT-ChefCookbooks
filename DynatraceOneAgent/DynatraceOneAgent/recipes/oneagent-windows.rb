#
# Cookbook:: dynatraceoneagent
# Recipe:: oneagent-windows
#
# Copyright:: 2017, Dynatrace


#download_link = node['download_link']

#windows_package 'DynatraceOneAgent' do
#  source 'https://github.com/akramullak-sysgain/Dynatrace-OneAgent-Windows/raw/master/Dynatrace-OneAgent-Windows-1.121.201.msi'
#  installer_type :msi
#  action :install
#end

powershell_script "DynatraceOneAgent" do
  guard_interpreter :powershell_script
  code "Invoke-WebRequest -Uri https://raw.githubusercontent.com/sysgain/IOT-ChefCookbooks/master/DynatraceOneAgent/Dynatrace_One_Agent_WindowsAgent.ps1 -OutFile c:/users/Dynatrace_One_Agent_WindowsAgent.ps1"
  system("powershell.exe c:/users/Dynatrace_One_Agent_WindowsAgent.ps1")
end
