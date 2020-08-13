Rails.application.routes.draw do
  get 'heroinepower/new'

  get 'heroinepower/create'

  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show]
  resources :heroinepower, only: [:new, :create]
end
