Rails.application.routes.draw do
  get 'gateway/index'

  resources :orders
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
