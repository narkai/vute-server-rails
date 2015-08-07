module Api
  module V1
    class VuteResource < JSONAPI::Resource

    	attributes :keyword
    	
   #  	before_save :set_user

			# private
			
			# def set_user
			# 	User.user = context[:current_user]
			# end

    end
  end
end
