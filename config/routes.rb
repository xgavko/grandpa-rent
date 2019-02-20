Rails.application.routes.draw do
  devise_for :users
  root to: 'elders#index'

  resources :elders, only: [:show] do
    resources :rents, only: [:create]
  end

  resources :rents, only: [:index] do
    resources :reviews, only: [:new, :create]
  end

  namespace :my do
    resources :elders, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    resources :rents, only: [:index]
    # do
    #   resources :confirmeds, [:create]
    #   resources :declineds, [:create]
    # end
  end

end
