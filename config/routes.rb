Rails.application.routes.draw do
  root "reservations#index"
  resources :reservations, only: [:index, :show] do
    collection do
      put '/reserve/' =>'reservations#create', :as => :create
      post '/show/' =>'reservations#show', :as => :show
    end
  end
end
