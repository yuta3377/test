Rails.application.routes.draw do
  resources :topics, only: [:index, :create, :show, :destroy]
  resources :posts,  only: :create
  resources :users
end
