Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :comments
  resources :users_connect, only: [:show]
  resources :posts
  resources :infos
  # get "/settings", to: "devise/registrations#edit"
  get 'meetings', to: 'pages#meetings'
  get 'area', to: 'pages#area'
  get 'profile', to: 'pages#profile'
  get 'landing_page', to: 'pages#landing_page'
  root to: 'pages#home'
end
