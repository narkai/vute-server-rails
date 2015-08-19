module Api
  module V1

    class VutesController < ApiController
      prepend_before_action :doorkeeper_authorize!
    end

  end
end
