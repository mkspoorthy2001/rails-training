Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  

  # Defines the root path route ("/")
  root "tables#index"
  get "/tables", to: "tables#index"
  get '/search', to: "tables#search"
  # root "companies#index1"
  get "/companies", to: "companies#index1"
  # resources :tables do
  #   get '/page/:page', action: :index, on: :collection
  # end
  # resources :tables do
  #   get '/page/:page', action: :index1, on: :collection

  # root "roles#index2"
  get "/roles", to: "roles#index2"
  # end
end
