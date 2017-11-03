Rails.application.routes.draw do
  devise_for :users
  get 'login', to: 'pages#login'
  root to: 'pages#home'
end
