#
# Cookbook Name:: zabbix_part
# Recipe:: setup
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
directory "/var/log/optional" do
  action :create
  owner 'root'
  group 'root'
  recursive true
  not_if { Dir.exists?('/var/log/optional') }
end

cron "set" do
  action :create
  minute '*/1'
  command 'echo `date` >> /var/log/optional/optional.log'
end
