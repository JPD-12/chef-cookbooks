if node['fb_powershell_module'] && node['fb_powershell_module']['module_name'] && node['fb_powershell_module']['repository']
  fb_powershell_module node['fb_powershell_module']['module_name'] do
    repository node['fb_powershell_module']['repository']
  end
else
  Chef::Log.warn("fb_powershell_module attribute is missing or incomplete!")
end
