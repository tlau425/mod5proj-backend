Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      patch '/warranties/:id', to: 'warranties#edit'
      resources :warranties
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :photos
    end
  end
end
