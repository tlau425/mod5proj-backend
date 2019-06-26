Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :warranties
      resources :users
      resources :photos
    end
  end
end
