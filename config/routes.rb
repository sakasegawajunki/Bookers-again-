Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  resources :users, only:[:show, :index, :edit]
  resources :books, only:[:new, :creat, :index, :show, :destroy]
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
