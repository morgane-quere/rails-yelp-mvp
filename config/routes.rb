Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/create'
  get 'restaurants/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:new, :create]
  end
end
