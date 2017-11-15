Rails.application.routes.draw do

  resources :comments
  resources :users_connect, only: [:show]
  resources :posts
  devise_for :users

  get 'connections', to: 'pages#connections'
  get 'meetings', to: 'pages#meetings'
  get 'area', to: 'pages#area'
  get 'settings', to: 'pages#settings'
  get 'profile', to: 'pages#profile'
  get 'login', to: 'pages#login'
  root to: 'pages#landing_page'
end
