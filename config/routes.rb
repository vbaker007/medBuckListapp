Rails.application.routes.draw do
  root to: 'bucketlists#index'

    devise_for :users
    resources :bucketlists
    resources :meditations
    resources :users 
    # get '/new', to: 'users#index', as: :show
end
