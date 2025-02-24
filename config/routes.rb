Rails.application.routes.draw do
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :users do
    get 'registrations/edit'
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get'welcome/index'  

  authenticated :user do
    root to: 'profiles#show', as: :authenticated_root
  end

  root to: 'landing_page#index'

  resource :profile, only: [:show, :edit, :update]
end