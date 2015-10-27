module Api
  module V1
    class VuteResource < BaseResource

      attributes :keyword, :user_id

      has_one :user
      before_save :set_user

      def self.records(options = {})
        context = options[:context]
        context[:current_user].vutes
      end

      private

      def set_user
        @model.user = context[:current_user]
      end

    end
  end
end
