Rails.application.routes.draw do
  namespace :v1 do
    resources :events, only: %i[index create destroy update]
    resources :users, only: %i[index create]
    resources :participation_events, only: %i[create destroy index]
  end
  root 'v1/users#index'
end
