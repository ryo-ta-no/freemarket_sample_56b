Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items do
    collection do
      get 'category_children'
      get 'category_grandchildren'
    end
  end
end

