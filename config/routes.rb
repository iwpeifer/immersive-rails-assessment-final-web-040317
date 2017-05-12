Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: [:show]

  root to: 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'users#new', as: '/signup'
  post '/users', to: 'users#create', as: '/users'

end
