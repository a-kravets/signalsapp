Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :traders, only: [:create]
  # resources :traders, except: [:show, :index, :new, :update, :destroy, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
