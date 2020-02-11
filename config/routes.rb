Rails.application.routes.draw do
  root 'topics#index'
  resources :topics, only: [:index, :create, :show, :destroy]
  resources :posts,  only: :create
  resources :users
end
