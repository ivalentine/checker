Rails.application.routes.draw do
  mount LetsencryptPlugin::Engine, at: '/'
  devise_for :users, :path => '', :path_names => { :sign_up => 'join' }
  resources :lists
  resources :users
  resources :tasks

  root 'lists#index'

end
