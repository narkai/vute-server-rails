module Api
  module V1

    class UsersController < ApiController

      before_action :doorkeeper_authorize!, except: :create
      # before_action :doorkeeper_authorize!, :except => [:create, :show]
      before_action :ensure_current_user_is_resource_owner, except: :create

      private

      include ErrorRenderer

      def ensure_current_user_is_resource_owner
        if context[:current_user].id != (params['user_id'] || params['id']).to_i
          render_error(
            :forbidden,
            detail: 'Only current resource owner id is allowed.'
          )
        end
      end

    end

  end
end
