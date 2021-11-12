Rails.application.routes.draw do
 devise_for :users
 
 root to: "home#index"
 
 resources :users do
   resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
 end
 resources :englishes
end
