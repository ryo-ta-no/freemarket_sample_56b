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
  resources :users

  resources :ragistrations do
    collection do
      get 'member'
      get 'authentication'
      get 'address'
      post 'complete'
      get 'userlogout'
    end
  end
  resources :cards, only: [:create, :show, :new, :index] do
    collection do
      post 'create'
      post 'delete', to: 'cards#delete'
      post 'show'
      get 'confirmation'
      post 'payment'
      get 'pay'
    end
  end


end

