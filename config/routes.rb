Rails.application.routes.draw do
  devise_for :users

  root to: "items#index"
  resources :items do
    collection do
      get 'category_children'
      get 'category_grandchildren'
      get 'postage_children'
    end
  end

  root to: "items#show"
  resources :items


  resources :ragistrations do
    collection do
      get 'authentication'
      get 'address'
      get 'payment'
      get 'complete'
    end
  end
  resources :users

  resources :ragistrations


end

