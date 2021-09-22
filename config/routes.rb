Rails.application.routes.draw do
  get 'homes/about'
  root :to => 'homes#top'
  resources :books
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
