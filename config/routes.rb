Rails.application.routes.draw do
  defaults format: :json do
    resources :sessions, only: [:create]
    resources :users, only: [:create]
    resources :groups, only: [:create, :index]
  end
end
