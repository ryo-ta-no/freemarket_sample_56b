Rails.application.routes.draw do
  root to: "current_user#index"
  resources :items
end
