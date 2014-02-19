# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'proftpd::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs proftpd' do
    expect(chef_run).to install_package('proftpd')
  end

  it 'enables proftpd' do
    expect(chef_run).to enable_service('proftpd')
  end

  it 'starts proftpd' do
    expect(chef_run).to start_service('proftpd')
  end

  it 'installs a better config file' do
    expect(chef_run).to create_cookbook_file('/etc/proftpd/proftpd.conf')
  end
end
