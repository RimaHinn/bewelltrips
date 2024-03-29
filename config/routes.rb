Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :trips
  get "/destinations", to: "trips#destinations"
  get "/categories", to: "trips#categories"
  get "/about", to: "trips#about"
  get "/aboutstory", to: "trips#aboutstory"
  get "/aboutpast", to: "trips#aboutpast"
  get "/aboutoffer", to: "trips#aboutoffer"

end
