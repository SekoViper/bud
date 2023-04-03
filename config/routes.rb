Rails.application.routes.draw do
  devise_for :users

  get 'welcome/home'
  resources :groups
  resources :users

  resources :purchases

  get 'new', to: 'purchases#new', as: 'new_purchase_path'

  resources :groups do
    resources :purchases
  end

  root "welcome#home"
end
