Rails.application.routes.draw do
  namespace :v1 do
    resources :events, only: [:index, :create, :destroy, :update]
    resources :users, only: [:index, :create]
    resources :participation_events, only: [:create, :destroy, :index]
  end
end
