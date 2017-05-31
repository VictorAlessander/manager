Rails.application.routes.draw do
  resources :accounts
  resources :phones
  resources :addresses
  resources :contacts
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
