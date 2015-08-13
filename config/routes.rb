Rails.application.routes.draw do

  use_doorkeeper

  #

  #API
  namespace :api do
    namespace :v1 do
      jsonapi_resources :users
      # jsonapi_resources :users, only: [:index, :create]
      jsonapi_resources :vutes
    end
  end

end
