Rails.application.routes.draw do
  devise_for :logins
  devise_for :uses
  resources :tasks
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
end