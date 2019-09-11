Rails.application.routes.draw do
  
  root 'static_pages#home'
  
  delete '/logout', to: 'sessions#destroy'
  get "/logout", to: "sessions#destroy"
  post '/login',     to: 'sessions#create'
  get  '/login',     to: 'sessions#new'
  get  '/help',      to: 'static_pages#help'
  get  '/about',     to: 'static_pages#about'
  get  '/contact',   to: 'static_pages#contact'
  get  '/signup',    to: 'users#new'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
 