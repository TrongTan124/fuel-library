require 'spec_helper'

describe 'glance::db::mysql' do
  let :facts do
    {
      :osfamily => 'Debian'
    }
  end
  
  describe "with default params" do
    let :params do
      { 
      	:password => 'glancepass1' 
      }
    end

  	it { should include_class('mysql::python') }
  end
end
