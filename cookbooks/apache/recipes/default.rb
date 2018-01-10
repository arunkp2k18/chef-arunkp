#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
if node['platform_family'] ==  "rhel"
	package = "httpd"
eslif node['platform_family'] == "debian"
	package = "apache2"
end
package 'apache2' do
	package_name package 
	action :install
end

service 'httpd' do
	action [:start, :enable]
end 

