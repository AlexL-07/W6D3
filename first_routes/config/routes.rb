Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

   resources :users, only: [:destroy, :index, :show, :update, :create]

   resources :artworks, only: [:destroy, :show, :update, :create]

   resources :artwork_shares, only: [:create, :destroy]

   resources :users do 
    resources :artworks, only: :index
   end

   resources :comments, only: [:create, :destroy]

   resources :users, :artworks do 
    resources :comments, only: [:index]
   end

  #get 'users', to: 'users#index'
  #get 'users/:id', to: 'users#show'
  #post 'users', to: 'users#create'
  #patch 'users/:id', to: 'users#update'
  #put 'users/:id', to: 'users#update'
  #delete 'users/:id', to: 'users#destroy'
  #get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  #get 'users/new', to: 'users#new', as: 'new_user'
  

end
