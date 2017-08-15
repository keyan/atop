# # encoding: utf-8

if os[:family] == 'redhat'
  describe file('/etc/sysconfig/atop') do
    it { should be_file }
    its('content') { should match "LOGPATH" }
    its('content') { should match "INTERVAL" }
  end
elsif os[:family] == 'debian'
  describe file('/etc/default/atop') do
    it { should be_file }
    its('content') { should match "LOGPATH" }
    its('content') { should match "INTERVAL" }
  end
end

describe package('atop') do
  it { should be_installed }
end

describe service('atop') do
  it { should be_enabled }
  it { should be_running }
end
