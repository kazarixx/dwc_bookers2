Rails.application.routes.draw do
  get "home/about" => 'homes#about'
  root :to => 'homes#top'
  resources :books , only: [:index, :create, :index, :show, :edit, :update, :destroy] 
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end