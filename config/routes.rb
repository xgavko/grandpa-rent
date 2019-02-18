Rails.application.routes.draw do
  devise_for :users
  root to: 'elders#index'

  resources :elders, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :rents, only: [:create]
  end

  resources :rents, only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

end
