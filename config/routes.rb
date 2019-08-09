Rails.application.routes.draw do

  devise_for :users
  root to: "items#index"
  resources :items

  resources :ragistrations do
    collection do
      get 'authentication'
      get 'address'
    end
  end
end
