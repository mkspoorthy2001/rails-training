Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :tables, :param => :user_id do 
  #   resources :companies
  #   resources :roles

  # end

  # Defines the root path route ("/")
  root "tables#index"
  get "/tables", to: "tables#index"
  get '/search', to: "tables#search"
  get "/companies", to: "companies#index1"
  post "/tables", to: "tables#create"
  get "tables/new", to: "tables#new", as: "new_table"
 
  get "/roles", to: "roles#index2"
end



