Rails.application.routes.draw do

  resources :posts
  devise_for :users

  get 'profile', to: 'pages#profile'

  get 'login', to: 'pages#login'
  root to: 'pages#home'
end
