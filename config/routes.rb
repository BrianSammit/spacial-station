Rails.application.routes.draw do
  root 'categories#index'
  resources :categories
  resources :rockets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
