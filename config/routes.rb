Rails.application.routes.draw do
  # get 'homes/top'
  root to: 'homes#top'
  get 'home/about'
  resources :users, only:[:show, :index, :edit]
  resources :books, only:[:create, :index, :show, :destroy, :edit]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
