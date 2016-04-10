Rails.application.routes.draw do

  use_doorkeeper
  use_doorkeeper

  use_doorkeeper do
    controllers :tokens => 'oauth/custom_tokens'
  end

  #

  root to: redirect("/doc")

  #API
  namespace :api do
    namespace :v1 do
      jsonapi_resources :users, only: [:create, :show, :update, :destroy]
      jsonapi_resources :vutes
    end
  end

end
