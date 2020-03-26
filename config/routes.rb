Rails.application.routes.draw do
  get 'login', to: 'users#login'
  post 'signin', to: 'users#signin'
  get 'register', to: 'users#register'
  post 'signup', to: 'users#signup'
  get 'logout', to: 'users#logout'
  resources :comments

  resources :posts
  root to: 'posts#index'
end
