Rails.application.routes.draw do
  get "home/about" => 'homes#about'
  root :to => 'homes#top'
  resources :books , only: [:index, :create, :index, :show, :edit, :update, :destroy] do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
 end
 
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update] do
   resource :relationship, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end