Rails.application.routes.draw do

  root to: 'landing#index'

  resources :users
  resources :roles
  resources :behaviors
  resources :attitudes

  resources :butterflies do
    get "delete"
  end

  resources :stages, param: :name


end
