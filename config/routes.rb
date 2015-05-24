Rails.application.routes.draw do
  devise_for :users
  devise_for :users
  resources :products, :images

  get 'welcome/index'
  root 'welcome#index'


end
