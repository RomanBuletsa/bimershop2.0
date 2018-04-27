Rails.application.routes.draw do
  get 'postcomments/new'

  get 'images/new'

  get 'posts/index'

  get 'userparams/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'

  devise_for :users

resources :userparams

  resources :posts do
  	resources :postcomments
  	resources :images
  end

root to: 'pages#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
