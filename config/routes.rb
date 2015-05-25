Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :products, :images


  get 'welcome/index'
  root 'welcome#index'
  get 'sign_out', to: 'users#sign_out_all_scopes'

end
