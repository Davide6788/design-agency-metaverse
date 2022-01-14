Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :baskets do
    collection do
      get :paid, :pending
    end
  end

  resources :baskets, only: [:show, :index]

  resources :nfts do
    resources :baskets, only: [:create, :new]
  end

end
