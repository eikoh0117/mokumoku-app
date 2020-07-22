Rails.application.routes.draw do
  namespace :v1 do
    resources :events, only: [:create, :destroy]
    resources :users, only: [:index, :create]
  end
end
