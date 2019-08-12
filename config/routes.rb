Rails.application.routes.draw do
  devise_for :users
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

  resources :searches

end
