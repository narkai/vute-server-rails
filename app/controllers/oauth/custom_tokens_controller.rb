class Oauth::CustomTokensController < Doorkeeper::TokensController
  def create
    response = strategy.authorize
    body = response.body

    if response.status == :ok
      user = User.find(response.token.resource_owner_id) rescue nil

      unless user.nil?
        # body[:user] = user.as_json
        body[:user_id] = user.id.as_json
      end
    end

    self.headers.merge! response.headers
    self.response_body = body.to_json
    self.status = response.status

  rescue Doorkeeper::Errors::DoorkeeperError => e
    handle_token_exception e
  end
end
