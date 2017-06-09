Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_up => 'join' }
  resources :lists
  resources :users
  resources :tasks

  root 'lists#index'

end
