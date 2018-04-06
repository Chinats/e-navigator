Rails.application.routes.draw do
  resources :interviews
  devise_for :users
  resources :users do
    get 'interviews/index'
  end
  root 'users#index'
  get 'users/index'
end
