Rails.application.routes.draw do
  namespace :v1 do
    resources :events, only: [:index, :create, :destroy]
    resources :users, only: [:index, :create]
  end
end
