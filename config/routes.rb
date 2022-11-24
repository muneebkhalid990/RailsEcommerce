Rails.application.routes.draw do
  get 'order/index'
  # devise_for :user, controllers: { registrations: 'users/registrations'}
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  resources :products
  # get 'home/index'
  get 'home/about'
  root 'home#index'
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
