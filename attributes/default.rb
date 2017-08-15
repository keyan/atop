#
# Cookbook Name:: atop
# Attributes:: default
#

default['atop']['action'] = :install
default['atop']['version'] = nil
default['atop']['logpath'] = '/var/log/atop'
default['atop']['interval'] = '600'
