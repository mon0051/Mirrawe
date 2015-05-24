Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :products, :images

  get 'welcome/index'
  root 'welcome#index'

end
