Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :baskets, only: [:show]

  resources :nfts do
    resources :baskets, only: [:create, :new]
  end

end
