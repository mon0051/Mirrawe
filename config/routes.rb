Rails.application.routes.draw do
  get 'authen/sign_out'

  devise_for :admins, path: "auth", path_names: {sign_out: 'logout'}
  devise_for :users
  resources :products, :images


  get 'welcome/index'
  root 'welcome#index'
  get 'sign_out', to: 'devise#sign_out'

end
