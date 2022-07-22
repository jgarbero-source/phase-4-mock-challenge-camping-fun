Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :camper, only: [:index, :show, :create]
  resources :activity, only: [:index, :destroy]
  resources :signup, only: [:index, :create]
end
