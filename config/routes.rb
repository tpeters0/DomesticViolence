Rails.application.routes.draw do

  root to: 'cycles#index'

  resources :users
  resources :cycles
  resources :roles
  resources :behaviors
  resources :stages
  resources :attitudes
  resources :butterflies

end
