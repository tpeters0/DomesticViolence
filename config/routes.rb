Rails.application.routes.draw do

  root to: 'landing#index'

  resources :users
  resources :roles
  resources :behaviors
  resources :attitudes
  resources :butterflies

  # get '/stages/.:name' => 'stages#show',
  # as: :stage
  # get '/stages' => 'stages#index'

  resources :stages, param: :name


end
