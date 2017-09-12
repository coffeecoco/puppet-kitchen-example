require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/sbin'

describe 'yum' do
  describe yumrepo('puppetlabs') do
    it {should exist}
    it {should be_enabled}
  end

  describe yumrepo('epel') do
    it {should exist}
    it {should be_enabled}
  end

  describe yumrepo('omd') do
    it {should exist}
    it {should be_enabled}
  end

  describe yumrepo('remi') do
    it {should exist}
    it {should be_enabled}
  end

  describe package('yum-plugin-priorities') do
    it {should be_installed}
  end
end
