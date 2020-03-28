Rails.application.routes.draw do
  get 'songs/index'
  get 'songs/create'
  get 'songs/new'
  get 'songs/edit'
  get 'songs/show'
  get 'songs/update'
  get 'songs/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :songs

end
