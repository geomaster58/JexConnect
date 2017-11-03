Rails.application.routes.draw do
  get 'login', to: 'pages#login'
  root to: 'pages#home'
end
