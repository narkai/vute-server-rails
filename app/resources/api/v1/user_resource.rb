module Api
  module V1
    class UserResource < JSONAPI::Resource

    	attributes :name, :email, :password

    	has_many :vutes

    end
  end
end
