Rails.application.routes.draw do

  resources :users

  resources :projects  

  resources :galleries

  post '/auth/login', to: 'authentication#login'
end
