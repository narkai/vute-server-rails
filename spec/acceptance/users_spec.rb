require "api_documentation_helper"

module Api
  module V1

    RSpec.resource "Users" do
      header "Content-Type", "application/vnd.api+json"
      # header "Accept", "application/vnd.api+json"

      #

      # post api_v1_users_url do
      post "/api/v1/users" do
        parameter :type, <<-DESC, required: true
          Should always be set to <code>users</code>.
        DESC
        parameter :name, <<-DESC, scope: :attributes, require: true
          The name of the user.
        DESC
        parameter :email, <<-DESC, scope: :attributes, require: true
          The email of the user.
        DESC
        parameter :password, <<-DESC, scope: :attributes, require: true
          The password of the user.
        DESC

        let(:type) { :users }
        let(:name) { "rian" }
        let(:email) { "rian@rod.com" }
        let(:password) { "rody" }

        example "create a user" do
          do_request
          expect(status).to eq 201
        end
      end

      #

      post "/api/v1/users" do
        parameter :type, <<-DESC, required: true
          Should always be set to <code>users</code>.
        DESC
        parameter :name, <<-DESC, scope: :attributes, require: true
          The name of the user.
        DESC
        parameter :email, <<-DESC, scope: :attributes, require: true
          The email of the user.
        DESC
        parameter :password, <<-DESC, scope: :attributes, require: true
          The password of the user.
        DESC

        let(:type) { :users }
        let(:name) { nil }
        let(:email) { "rian@rod.com" }
        let(:password) { "rody" }

        example "create a player and receive an error" do
          do_request
          expect(status).to eq 422
        end
      end

      #

      get "/api/v1/users/:id" do
        parameter :id, <<-DESC, required: true
          ID of the user to be retrieved.
        DESC

        let(:id) do
          FactoryGirl.create(:user).id
        end

        example "get user" do
          do_request
          expect(status).to eq 200
        end
      end

      #

      get "/api/v1/users" do
        before do
          FactoryGirl.create(:user, name: "rian", email: "rian@rod.com")
          FactoryGirl.create(:user, name: "jimi", email: "jimi@rod.com")
        end

        example "list users" do
          do_request
          expect(status).to eq 200
        end
      end

    end
    
  end
end
