Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :users_connect, only: [:show]
  resources :posts


  get 'connections', to: 'pages#connections'
  resources :infos
  # get "/settings", to: "devise/registrations#edit"

  get 'meetings', to: 'pages#meetings'
  get 'area', to: 'pages#area'
  get 'profile', to: 'pages#profile'
  get 'login', to: 'pages#login'
  root to: 'pages#landing_page'

end
