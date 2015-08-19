require "api_documentation_helper"

module Api
  module V1

    RSpec.resource "Users" do

      header "Content-Type", "application/vnd.api+json"
      header "Accept", "application/vnd.api+json"

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
        let(:name) { Faker::Name.name }
        let(:email) { Faker::Internet.email }
        let(:password) { Faker::Internet.password(8) }

        example "Create a user" do
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
        let(:email) { Faker::Internet.email }
        let(:password) { Faker::Internet.password(8) }

        example "Create a user and receive an error" do
          do_request
          expect(status).to eq 422
        end
      end

      #

      # get "/api/v1/users" do
      #   before do
      #     FactoryGirl.create(:user, name: Faker::Name.name, email: Faker::Internet.email)
      #     FactoryGirl.create(:user, name: Faker::Name.name, email: Faker::Internet.email)
      #   end
      #
      #   example "List users" do
      #     do_request
      #     expect(status).to eq 200
      #   end
      # end

      #

      get "/api/v1/users/:id" do
        parameter :id, <<-DESC, required: true
          ID of the user to be retrieved.
        DESC

        let(:id) do
          FactoryGirl.create(:user).id
        end

        example "Get user by id" do
          header "Authorization", authHeaderValue(id)
          do_request
          expect(status).to eq 200
        end
      end

      #

      patch "/api/v1/users/:id" do
        parameter :type, <<-DESC, required: true
          Should always be set to <code>users</code>.
        DESC
        parameter :id, <<-DESC, required: true
          The id of the user.
        DESC
        parameter :name, <<-DESC, scope: :attributes
          The name of the user.
        DESC
        parameter :email, <<-DESC, scope: :attributes
          The email of the user.
        DESC
        parameter :password, <<-DESC, scope: :attributes
          The password of the user.
        DESC

        let(:user) do
          FactoryGirl.create(:user)
        end

        let(:id) do
          user.id.to_s
        end

        let(:params) {
          {
           data: {
             type: :users,
             id: id,
             attributes: {
               name: Faker::Name.name
             }
           }
          }
        }

        let(:raw_post) { params.to_json }

        example "Updating a user" do
          header "Authorization", authHeaderValue(id)
          do_request
          expect(status).to eq(200)
        end
      end

      #

      delete "/api/v1/users/:id" do
        let(:id) do
          FactoryGirl.create(:user).id
        end

        example "Deleting a user" do
          header "Authorization", authHeaderValue(id)
          do_request
          expect(status).to eq(204)
        end
      end

      #

      # head "/api/v1/users" do
      #   example_request "Getting the headers" do
      #     # expect(response_headers["Cache-Control"]).to eq("no-cache")
      #     expect(response_headers["Content-Type"]).to eq("application/vnd.api+json")
      #   end
      # end

    end

  end
end
