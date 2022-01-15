Rails.application.routes.draw do
  resources :user_poems, only: [:index]
  resources :poems, only: [:show]
  resources :users, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
