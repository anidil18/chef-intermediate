# Inspec Control File

# https://inspec.io/docs/reference/resources/command/
describe command('chef --version') do
  its('stdout') { should_not match /Chef Development Kit Version: 2\.4\.17/ }
  its('exit_status') { should eq 0 }
end

# https://inspec.io/docs/reference/resources/package/
describe package('tree') do
  it { should_not be_installed }
end

# https://inspec.io/docs/reference/resources/file/
describe file('/home/chef/apache') do
  it { should exist }
  it { should be_owned_by 'chef'}
end

# https://inspec.io/docs/reference/resources/user/
describe user('chef') do
  it { should exist }
  its('groups') { should include 'wheel' }
  its('groups') { should include 'root' }
end

# https://inspec.io/docs/reference/resources/package/
installed_packages = %w[ yum-utils device-mapper-persistent-data lvm2
  vim-enhanced nano emacs docker-io ]

installed_packages.each do |name|
  describe package(name) do
    it { should be_installed }
  end
end

# https://inspec.io/docs/reference/resources/service/
describe service('docker') do
  it { should be_running }
end

# https://inspec.io/docs/reference/resources/service/
describe service('iptables') do
  it { should_not be_running }
end

# https://inspec.io/docs/reference/resources/file/
describe file('/etc/chef/ohai/hints/ec2.json') do
  it { should exist }
  its('content') { should match /\{\}/ }
end

# https://inspec.io/docs/reference/resources/sshd_config/
describe sshd_config do
  its('PasswordAuthentication') { should eq 'yes' }
  its('MaxSessions') { should eq '250' }
  its('MaxStartups') { should eq '250:100:250' }
end

# https://inspec.io/docs/reference/resources/file/
describe file('/etc/sysconfig/selinux') do
  it { should exist }
  its('content') { should match /^SELINUX=disabled/ }
  its('content') { should_not match /^SELINUX=enforcing/ }
end
