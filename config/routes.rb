Rails.application.routes.draw do
  resources :comments, only: [:index, :show, :create, :update, :destroy]
  root to: 'comments#index'
end
