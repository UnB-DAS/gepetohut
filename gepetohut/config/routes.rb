Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show]

  get 'home_page/index'

  root 'home_page#index'

  resources :orders

  resources :pizzas

  resources :evaluations

  resources :restaurants
  
  resources :employees
end
