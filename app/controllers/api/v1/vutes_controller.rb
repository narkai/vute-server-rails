module Api
  module V1
    class VutesController < JSONAPI::ResourceController

    	prepend_before_action :doorkeeper_authorize!

    	def context
    		current_user = current_resource_owner
			end

			def current_resource_owner
		    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
		  end

    end
  end
end
