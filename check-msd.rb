control 'command-execution' do
    title 'Check if Windows Defender command command executes successfully'
    desc 'Ensure the defender command runs without errors.'
  
    describe command('defender -status') do
      its('exit_status') { should eq 0 }
    end
  end
  