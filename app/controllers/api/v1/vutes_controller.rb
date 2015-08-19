module Api
  module V1

    class VutesController < ApiController
      prepend_before_action :doorkeeper_authorize!, except: :create
    end

  end
end
