Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :songs

  get '/dashboard/:id', to: 'songs#dashboard', as: :dashboard

end
