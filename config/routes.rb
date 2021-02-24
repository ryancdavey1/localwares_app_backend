Rails.application.routes.draw do
  
  resources :locations
  namespace :api do
    namespace :v1 do
      resources :users
      resources :categories
      resources :items
      resources :businesses
    end
  end
end
