Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :companies, only: [:index, :show]
      resources :events
      resources :images
      resources :jobs, only: [:index, :create, :show, :update]
      resources :locations
      resources :users
    end
  end
end
