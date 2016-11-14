require 'spec_helper'

describe port(1099) do
  it { should be_listening }
end

describe service('rmiregistry') do
  it { should be_enabled }
  it { should be_running }
end
