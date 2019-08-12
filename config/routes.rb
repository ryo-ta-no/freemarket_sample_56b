Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items
  resources :users

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
