Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  # get '/test', controller: 'home', action: 'test'
  # ova se ne koristi bas cesto
  # get '/test' => 'home#test', as: 'nesto'
  get '/test' => 'home#test'
  # get se koristi za ostale stranice, a root za home

  get '/products' => 'home#products'

end
