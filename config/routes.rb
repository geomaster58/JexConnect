Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: "settings"}, controllers: { registrations: 'users/registrations' }
  resources :comments
  resources :users_connect, only: [:show]
  resources :posts


  get 'connections', to: 'pages#connections'


  get 'meetings', to: 'pages#meetings'
  get 'area', to: 'pages#area'
  get 'profile', to: 'pages#profile'
  get 'login', to: 'pages#login'
  root to: 'pages#landing_page'

end
