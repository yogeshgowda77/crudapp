Rails.application.routes.draw do
  #get 'addresses/index'
  #get 'addresses/show'
  #get 'addresses/edit'
  #get 'addresses/new'
  #get 'products/index'
  #get 'products/show'
  #get 'products/edit'
  #get 'products/new'
  #get 'orders/index'
  #get 'orders/show'
  #get 'orders/edit'
  #get 'orders/new'
 #get 'customers/index'
  #get 'customers/show'
  #get 'customers/edit'
  #get 'customers/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :customers
  resources :orders
  resources :products
  resources :addresses
  # Defines the root path route ("/")
  # root "articles#index"
end
