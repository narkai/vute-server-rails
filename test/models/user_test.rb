require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
	test 'should have unique email' do
    u1 = User.create! :name => "rian", :email => "rian@rod.com", :password_digest => "rody", password: 'rody', password_confirmation: 'rody'
    
    assert_raises(ActiveRecord::RecordInvalid){
    	User.create! :name => "rian", :email => u1.email, :password_digest => "rody", password: 'rody', password_confirmation: 'rody'
    }
	end

end
