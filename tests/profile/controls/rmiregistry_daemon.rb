control 'rmiregistry-daemon' do
  title 'Java RMI Registry Daemon'
  impact 1.0
  desc '
    Ensure Java RMI Registry is running
  '

  describe port(1099) do
    it { should be_listening }
  end

  describe service('rmiregistry') do
    it { should be_enabled }
    it { should be_running }
  end
end
