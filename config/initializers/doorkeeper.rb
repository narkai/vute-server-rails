Doorkeeper.configure do

  orm :active_record

  #

  # resource_owner_authenticator do
  #   current_user
  # end

  #

  enable_application_owner :confirmation => false

  resource_owner_from_credentials do |routes|
    User.find_by(email: params[:email]).try(:authenticate, params[:password])
  end

  grant_flows %w(password)

end
