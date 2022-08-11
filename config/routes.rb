Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'index', to: 'books#index'
  get '/show/:id' => 'books#show'

  get 'new', to: 'books#new'
  post 'new/book' => 'books#create'

  get '/book/edit/:id' => 'books#edit'
  post 'book/update/:id' => 'books#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
