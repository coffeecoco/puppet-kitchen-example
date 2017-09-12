
require 'serverspec'

set :backend, :exec
set :path, '$PATH:/sbin:/usr/sbin'

describe file('/etc/passwd') do
  it { should be_file }
end

