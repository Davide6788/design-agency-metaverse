Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :baskets do
    collection do
      get :paid, :pending
      patch :pay_all
    end
  end


  resources :categories, only: [:index, :show]

  resources :baskets, only: [:show, :index, :update, :destroy]

  resources :nfts do
    resources :baskets, only: [:create, :new]
  end
end
