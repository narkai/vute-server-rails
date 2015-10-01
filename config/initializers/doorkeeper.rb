Doorkeeper.configure do

  orm :active_record

  #

  enable_application_owner :confirmation => false

  resource_owner_from_credentials do |routes|
    User.find_by(name: params[:username]).try(:authenticate, params[:password])
  end

  grant_flows %w(password)

end
