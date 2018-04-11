Rails.application.routes.draw do
  resources :interviews
  devise_for :users
  resources :users do
    resources 'interviews', only: :index
  end
  root 'users#index'
  get 'users/index'
end
