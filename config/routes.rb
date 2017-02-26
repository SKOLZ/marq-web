require "sidekiq/web"

Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Sidekiq::Web => '/sidekiq'

  root to: 'categories#index'

  get 'about_us'  => 'webpage#about_us'
  get 'contact'   => 'webpage#contact'
  post 'contact'  => 'webpage#subscribe'

  resources :categories, only: [:index, :show] do
    # member do
    #   post :participate
    #   delete :stop_participating
    # end
  end

  resources :projects, only: [:show]

  # namespace :admin do
  #   resources :admins
  # end
end
