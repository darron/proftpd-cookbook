# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'proftpd::default' do
  describe service('proftpd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(21) do
    it { should be_listening }
  end
end
