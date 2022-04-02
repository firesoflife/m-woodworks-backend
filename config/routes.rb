Rails.application.routes.draw do
  resources :projects

  resources :users
  post '/auth/login', to: 'authentication#login'

  
end
