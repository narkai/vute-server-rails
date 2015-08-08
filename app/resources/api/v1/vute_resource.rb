module Api
  module V1
    class VuteResource < JSONAPI::Resource

    	attributes :keyword

      has_one :user
      before_save :set_user

			private
			
			def set_user
				@model.user = context[:current_user]
			end

    end
  end
end
