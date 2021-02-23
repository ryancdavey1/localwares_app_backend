Rails.application.routes.draw do
  resources :categories
  resources :items
  resources :businesses
  resources :locations
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
