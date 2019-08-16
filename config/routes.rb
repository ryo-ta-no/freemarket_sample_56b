Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :items do
    resources :photos 
    collection do
      get 'category_children'
      get 'category_grandchildren'
      get 'postage_children'
    end
  end

  resources :users do
    member do
      get 'goods'
    end
  end

  resources :ragistrations , only: [:create] do
    collection do
      get 'member'
      get 'authentication'
      get 'address'
      get 'payment'
      get 'complete'
      post "/" => "items#index"
    end
  end
end

