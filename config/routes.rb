Rails.application.routes.draw do
  devise_for :admins, :users
  resources :products, :images


  get 'welcome/index'
  root 'welcome#index'
  get 'sign_out', to: 'devise#sign_out_and_redirect(:admins)'

end
