require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/sbin'

describe 'vagrant' do
  describe file('/etc/hosts') do
    it {should be_file}
    it {should be_mode '644'}
    it {should be_owned_by 'root'}
    it {should be_grouped_into 'root'}
  end

  describe file('/etc/puppetlasbs/puppet//puppet.conf') do
    it {should be_file}
    its(:content) { should match /server = puppet.example.com/ }
  end
end
