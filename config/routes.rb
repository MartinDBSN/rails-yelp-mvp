Rails.application.routes.draw do
  # get 'restaurants', to: 'restaurants#index', as: 'index_restaurants'
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # post 'restaurants', to: 'restaurants#create'
  # get '/restaurants/:id/reviews/new', to: 'reviews#new', as: 'new_review'

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end

# resources :reviews, only: [:new, :create]
