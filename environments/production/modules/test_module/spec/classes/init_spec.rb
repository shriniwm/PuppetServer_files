require 'spec_helper'
describe 'test_module' do
  context 'with default values for all parameters' do
    it { should contain_class('test_module') }
  end
end
