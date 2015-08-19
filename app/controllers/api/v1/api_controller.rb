module Api
  module V1

    class ApiController < JSONAPI::ResourceController

      def context
        {current_user: current_resource_owner}
      end

      def current_resource_owner
        User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
      end
      
    end
  end
end
