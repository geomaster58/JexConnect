Rails.application.routes.draw do
  get 'profile', to: 'pages#profile'
  get 'login', to: 'pages#login'
  root to: 'pages#home'
end
