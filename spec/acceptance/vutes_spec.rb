require "api_documentation_helper"

module Api
  module V1

    RSpec.resource "Vutes" do

      header "Content-Type", "application/vnd.api+json"
      header "Accept", "application/vnd.api+json"

      #

      let!(:user) do
        FactoryGirl.create(:user)
      end

      #

      post "/api/v1/vutes" do
        parameter :type, <<-DESC, required: true
          Should always be set to <code>vutes</code>.
        DESC
        parameter :keyword, <<-DESC, scope: :attributes, require: true
          The keyword of the vute.
        DESC

        let(:type) { :vutes }
        let(:keyword) { Faker::Hacker.say_something_smart }

        example "Create a vute" do
          do_request
          expect(status).to eq 201
        end
      end

      #

      # post "/api/v1/vutes" do
      #   parameter :type, <<-DESC, required: true
      #     Should always be set to <code>vutes</code>.
      #   DESC
      #   parameter :keyword, <<-DESC, scope: :attributes, require: true
      #     The keyword of the vute.
      #   DESC
      #
      #   let(:type) { :vutes }
      #   let(:keyword) { nil }
      #
      #   example "Create a vute and receive an error" do
      #     do_request
      #     expect(status).to eq 422
      #   end
      # end

      #

      # get "/api/v1/vutes/:id" do
      #   parameter :id, <<-DESC, required: true
      #     ID of the vute to be retrieved.
      #   DESC
      #
      #   let(:id) do
      #     FactoryGirl.create(:vute).id
      #   end
      #
      #   example "Get vute by id" do
      #     header "Authorization", authHeaderValue(user.id)
      #     do_request
      #     expect(status).to eq 200
      #   end
      # end

      #

      # patch "/api/v1/vutes/:id" do
      #   parameter :type, <<-DESC, required: true
      #     Should always be set to <code>vutes</code>.
      #   DESC
      #   parameter :id, <<-DESC, required: true
      #     The id of the vute.
      #   DESC
      #   parameter :keyword, <<-DESC, scope: :attributes, require: true
      #     The keyword of the vute.
      #   DESC
      #
      #   let(:id) do
      #     @vute_id = FactoryGirl.create(:vute).id.to_s
      #   end
      #
      #   let(:params) {
      #     {
      #       data: {
      #         type: :vutes,
      #         id: @vute_id,
      #         attributes: {
      #           keyword: Faker::Hacker.say_something_smart
      #         }
      #       }
      #     }
      #   }
      #
      #   let(:raw_post) { params.to_json }
      #
      #   example "Updating a vute" do
      #     header "Authorization", authHeaderValue(user.id)
      #     do_request
      #     expect(status).to eq(200)
      #   end
      # end

      #

      # delete "/api/v1/vutes/:id" do
      #   let(:id) do
      #     FactoryGirl.create(:vute).id
      #   end
      #
      #   example_request "Deleting a vute" do
      #     header "Authorization", authHeaderValue(user.id)
      #     expect(status).to eq(204)
      #   end
      # end

      #

      # get "/api/v1/vutes" do
      #   before do
      #     FactoryGirl.create(:vute, keyword: Faker::Hacker.say_something_smart)
      #     FactoryGirl.create(:vute, keyword: Faker::Hacker.say_something_smart)
      #   end
      #
      #   example "List vutes" do
      #     header "Authorization", authHeaderValue(user.id)
      #     do_request
      #     expect(status).to eq 200
      #   end
      # end

      #

      # head "/api/v1/vutes" do
      #   example_request "Getting the headers" do
      #     # expect(response_headers["Cache-Control"]).to eq("no-cache")
      #     expect(response_headers["Content-Type"]).to eq("application/vnd.api+json")
      #   end
      # end

    end

  end
end
