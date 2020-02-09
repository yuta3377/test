Rails.application.routes.draw do
  resources :topics, only: [:index, :create, :show, :destroy]
end
