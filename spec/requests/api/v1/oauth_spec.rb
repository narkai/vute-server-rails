require 'rails_helper'

# RSpec.describe "oauth", :type => :request do
describe "oauth" do

	before:each do
		user = User.create! :email => "rian@rod.com", :password_digest => "rody", password: 'rody', password_confirmation: 'rody'
		app = Doorkeeper::Application.new :name => 'rian', :redirect_uri => 'http://rian.com'
		# @user = User.create! :email => "rian@rod.com", :password_digest => "rody", password: 'rody', password_confirmation: 'rody'
		# @app = Doorkeeper::Application.new :name => 'rian', :redirect_uri => 'http://rian.com'
		# @app.owner = @user
		# @app.save
	end

  describe 'oauth_token' do

	  it "should respond with 200" do

	    params = {
	    	email: "rian@rod.com",
	      grant_type: "password",
	      password: "rody"
	    }

	    post oauth_token_path, params
	    
	    # response.code.should eq "200"
	    expect(response).to be_success

	    json = JSON.parse(response.body)
	    expect(json).to include("access_token")

	    # p json

	  end

  end

end

	# describe '#oauth_token'
 #    it "should have a route named oauth_token, where e.g. oauth_token_path == /oauth/token" do
 #      oauth_token_path.should == '/oauth/token'
 #    end
 #  end

