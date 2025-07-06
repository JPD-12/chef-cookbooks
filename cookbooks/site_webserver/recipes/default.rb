if node['fb_powershell_module'].nil?
  Chef::Log.warn("fb_powershell_module attribute is nil!")
else
  Chef::Log.info("fb_powershell_module: #{node['fb_powershell_module'].inspect}")
end

fb_powershell_module node['fb_powershell_module']['module_name'] do
  repository node['fb_powershell_module']['repository']
end
