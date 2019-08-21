Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :items do
    collection do
      get 'category_children'
      get 'category_grandchildren'
      get 'postage_children'
    end

    member do
      get 'goods_detail'
    end
  end


  resources :users do
    member do
      get 'goods'
    end
  end

  resources :users

  resources :ragistrations do
    collection do
      get 'member'
      get 'authentication'
      get 'address'
      get 'payment'
      get 'complete'
      get 'userlogout'
    end
  end
end