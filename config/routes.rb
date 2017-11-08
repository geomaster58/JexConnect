Rails.application.routes.draw do

  resources :posts
  devise_for :users

  get 'profile', to: 'pages#profile'
  get 'landing_page', to: 'pages#landing_page'
  get 'login', to: 'pages#login'
  root to: 'pages#home'
end
