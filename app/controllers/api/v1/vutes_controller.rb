module Api
  module V1
    class VutesController < JSONAPI::ResourceController
    	before_action :doorkeeper_authorize!
    end
  end
end
