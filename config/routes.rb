Rails.application.routes.draw do

  root to: "items#index"
  devise_for :users

  resources :items do
    collection do
      get 'category_children'
      get 'category_grandchildren'
      get 'postage_children'
      get 'item_confilm'
    end

    member do
      get 'goods_detail'
    end
  end


  resources :users do
    member do
      get 'goods'
      get 'purchase'
    end
  end

  resources :users

  resources :ragistrations do
    collection do
      get 'member'
      get 'authentication'
      get 'address'
      get 'complete'
      get 'userlogout'
      get 'payment'
    end
  end


  resources :cards, only: [:create, :show, :new, :index] do
    collection do
      post 'pay'
      post 'delete', to: 'cards#delete'
      post 'show'
      get 'confirmation'
      get 'mypay'
   

    end
  end


  resources :purchase, only: [:index] do
    member do
      get 'item_confilm', to: 'purchase#item_confilm'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end
end


