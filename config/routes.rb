Rails.application.routes.draw do
  root 'home#index'

  resources :worklogs
  devise_for :users

  namespace :admin do
    root 'admins#index'
    resources :projects
    resources :tasks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
