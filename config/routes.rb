Rails.application.routes.draw do
  
  root 'pages#home'

  get '/home', to: 'pages#home'
  
  resources :families, except: [:new]
  resources :subjects
  resources :members
  resources :parents
  resources :children
  resources :regs
  
  get '/register', to: 'families#new'
  
  get '/login', to: "logins#new"
  post '/login', to: "logins#create"
  get '/logout', to: "logins#destroy"
end