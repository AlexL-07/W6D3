Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

   resources :users, only: [:destroy, :index, :show, :update, :create]

   resources :artworks, only: [:destroy, :index, :show, :update, :create]

  #get 'users', to: 'users#index'
  #get 'users/:id', to: 'users#show'
  #post 'users', to: 'users#create'
  #patch 'users/:id', to: 'users#update'
  #put 'users/:id', to: 'users#update'
  #delete 'users/:id', to: 'users#destroy'
  #get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  #get 'users/new', to: 'users#new', as: 'new_user'
  

end
