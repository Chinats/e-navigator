Rails.application.routes.draw do
  resources :interviews
  devise_for :users
  root 'users#index'
  get 'users/index'
  get 'interviews/index'
end
