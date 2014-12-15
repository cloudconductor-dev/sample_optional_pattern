#
# Cookbook Name:: zabbix_part
# Recipe:: all_configure
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
directory "/var/log/optional" do
  action :create
  owner 'root'
  group 'root'
  recursive true
  not_if { Dir.exists?('/var/log/optional') }
end

file "/var/log/optional/configure.log" do
  action :create
  content 'Check optional configure'
  owner 'root'
  group 'root'
  mode 755
end
