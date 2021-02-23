Rails.application.routes.draw do
  resources :locations
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
end
