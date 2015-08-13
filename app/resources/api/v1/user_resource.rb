module Api
  module V1
    class UserResource < BaseResource

    	attributes :name, :email, :password

    	has_many :vutes

    end
  end
end
