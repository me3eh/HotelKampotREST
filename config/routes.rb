Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reservations, only: [:index, :show] do
        collection do
          put '/reserve/' =>'reservations#create', :as => :create
          post '/show/' =>'reservations#show_with_uuid', :as => :show_with_uuid
        end
      end
    end
  end
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  root "reservations#index"
end
