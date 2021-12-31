Rails.application.routes.draw do
  root 'home#index'

  resources :tasks
  resources :worklogs
  devise_for :users

  namespace :admin do
    root 'admins#index'
    resources :projects
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
