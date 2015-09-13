Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: "events#main"

  resources :events, only: [:index, :show] do
    member do
      post :participate
      delete :stop_participating
    end
  end

  resources :tournaments, only: [] do
    member do
      post :participate
      delete :stop_participating
    end
  end
end
