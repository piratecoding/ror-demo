Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  # get '/test', controller: 'home', action: 'test'
  # ova se ne koristi bas cesto
  # get '/test' => 'home#test', as: 'nesto'
  get '/test' => 'home#test'
  # get se koristi za ostale stranice, a root za home

  # get '/products' => 'home#products'
  # get '/about' => 'home#about'
  resource :about, only: [:show]
  resources :products
  resources :sellers do
    resources :products, :categories
  end
  resources :categories
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  # resource jer mozemo imati samo jednu sesiju
  # Ovo se najcesce koristi

  # resources :products, only: [:index, :edit, :new]
  # resources :products, except: [:index]
  # Ako hocemo samo neke pojedinacne/ako hocemo sve osim neke

  namespace :admin do 
    resource :dashboard, only: [:show]
    resources :products
  end
end
