require 'spec_helper'
describe 'hpsdr' do

  context 'with defaults for all parameters' do
    it { should contain_class('hpsdr') }
  end
end
