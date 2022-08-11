Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'index', to: 'books#index'
  get '/show/:id' => 'books#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
