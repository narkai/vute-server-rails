require "api_documentation_helper"

module Api
  module V1

    RSpec.resource "Oauth" do

      header "Content-Type", "application/json"

      #

      post "/oauth/token" do
        parameter :grant_type, <<-DESC, required: true
          Should always be set to <code>password</code>.
        DESC
        parameter :username, <<-DESC, required: true
          The username of the user.
        DESC
        parameter :password, <<-DESC, required: true
          The password of the user.
        DESC

        let(:user) do
          FactoryGirl.create(:user)
        end

        let(:grant_type) { "password" }
        let(:username) { user.name }
        let(:password) { user.password }

        let(:raw_post) { params.to_json }

        example "Get access token" do
          do_request
          explanation "By resource owner client credentials flow"
          expect(status).to eq 200
        end
      end

    end

  end
end
