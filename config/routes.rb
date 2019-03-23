Rails.application.routes.draw do
  resources :videos
  root 'page#home'
  resources :articles
  resources :users, except: [:new]
  get 'register', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
