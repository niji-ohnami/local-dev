#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'httpd' do
	action :install
end

cookbook_file '/etc/httpd/conf/httpd.conf' do
	mode 0644
end

service 'httpd' do
	supports :status => true,:restart => true, :reload => true
	action [:enable,:start]
end
