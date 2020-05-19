Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  get 'static_pages/home'
  get '/help', to: 'static_pages#help', as: 'help'
  get '/about/', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  resources :users
end
