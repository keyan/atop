# Workaround to fix OS detection on Amazon Linux 2
# Related to: https://github.com/inspec/train/pull/380
Vagrant.configure('2') do |config|
  config.vm.provision 'shell', inline: <<-SHELL
        sudo echo "Amazon Linux 2" > /etc/system-release
    SHELL
end
