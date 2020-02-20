Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :items
  patch 'items/:id/update' => "items#update"
  resources :users, only: :show
end
