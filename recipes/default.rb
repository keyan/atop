#
# Cookbook Name:: atop
# Recipe:: default
#
# Copyright 2017, Keyan Pishdadian
#

case node['platform_family']
when 'rhel', 'amazon'
  include_recipe 'yum-epel'

  conf_file_location = '/etc/sysconfig/atop'
  template_source = 'atop-rhel.erb'

when 'debian'
  conf_file_location = '/etc/default/atop'
  template_source = 'atop-debian.erb'

else
  Chef::Application.fatal!('Unsupported operating system', 1)
end

package 'atop' do
  action node['atop']['action']
  version node['atop']['version']
end

template conf_file_location do
  action :create
  source template_source
  mode '0644'
  variables(
    logpath: node['atop']['logpath'],
    interval: node['atop']['interval']
  )
  notifies :restart, 'service[atop]', :delayed
end

service 'atop' do
  supports start: true,
           stop: true,
           status: true,
           restart: true
  action [:enable, :start]
end

include_recipe 'logrotate'

logrotate_app 'atop' do
  path "#{node['atop']['logpath']}/*"
  rotate 5
  frequency 'daily'
  maxsize '500M'
  options %w(copytruncate missingok notifempty compress)
end
