Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'statics#index'

  resources :users

  resources :dresses
  get 'dresses/search', to: 'dresses#search', as: 'search_dresses'

  resources :sessions
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
