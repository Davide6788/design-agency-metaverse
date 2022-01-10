Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/nfts', to: 'nfts#index'
  get '/basket', to: 'baskets#index'
  get '/nfts/:id', to: 'nfts#show'
  post '/nfts/:id', to: 'baskets#create'
  get '/user/:id/basket', to: 'baskets#show'

  delete '/user/:id/basket/:nft_id', to: 'baskets#destroy'

  post '/user/:id/basket', to: 'baskets#edit'

  patch '/user/:id', to: 'users#update'
  patch '/basket/:id', to: 'baskets#update'
  patch '/nfts/:id', to: 'nfts#update'

  get 'nfts/new', to: 'nfts#new'
  post 'nfts/new', to: 'nfts#create'

  delete 'nfts/:id', to: 'nfts#destroy'
end
