Rails.application.routes.draw do
  get 'book_comments/create'
  get 'book_comments/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
 devise_for :users
 
 root to: "home#index"
 
 resources :users do
   resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
 end
 
 resources :englishes do
  resources :favorites , only: [:create , :destroy]
 end
end
