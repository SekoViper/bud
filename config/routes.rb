Rails.application.routes.draw do
  devise_for :users
  
  authenticated :user do
    root 'groups#index', as: :authenticated_root
  end
  
  unauthenticated do
    root 'welcome#home', as: :unauthenticated_root
  end

  root to: 'home#index'
  
  get '/groups/all' => "groups#index"
  
  resources :groups, only: %i[index create new update all] do
    resources :purchases, only: %i[index create new show]
  end
end
