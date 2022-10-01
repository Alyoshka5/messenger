Rails.application.routes.draw do
  get 'hangouts/index'
  devise_for :users

  resources :messages, only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'hangouts#index'
end
