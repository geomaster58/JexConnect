Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: "settings"}
  resources :comments
  resources :users_connect, only: [:show]
  resources :posts
  # get "/settings", to: "devise/registrations#edit"
  # devise_for :users #, controllers: { registrations: 'registrations' }
  get 'meetings', to: 'pages#meetings'
  get 'area', to: 'pages#area'
  get 'profile', to: 'pages#profile'
  get 'landing_page', to: 'pages#landing_page'
  root to: 'pages#home'
end
