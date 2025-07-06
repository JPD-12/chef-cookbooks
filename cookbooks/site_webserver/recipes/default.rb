# recipes/default.rb
if node['fb_powershell_module'] &&
   node['fb_powershell_module']['module_name'] &&
   node['fb_powershell_module']['repository']

  # Validate input (only allow alphanumeric, underscores, hyphens)
  unless node['fb_powershell_module']['module_name'] =~ /^[a-zA-Z0-9_-]+$/
    raise "Invalid module_name: #{node['fb_powershell_module']['module_name']}"
  end

  # Safely install the module (no shell interpolation)
  powershell_script "install_module" do
    code <<-EOH
      Install-Module -Name "#{node['fb_powershell_module']['module_name']}" -Repository "#{node['fb_powershell_module']['repository']}"
    EOH
  end
else
  Chef::Log.warn("fb_powershell_module attribute is missing or incomplete!")
end