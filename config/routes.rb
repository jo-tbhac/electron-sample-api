Rails.application.routes.draw do
  defaults format: :json do
    resources :sessions, only: [:create, :index]
    resources :users, only: [:create, :index]
    resources :groups, only: [:create, :index]
  end
end
