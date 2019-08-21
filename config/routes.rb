Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :items do
    resources :photos 
    member do
      get 'items_show'
    end
    collection do
      get 'category_children'
      get 'category_grandchildren'
      get 'postage_children'
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

