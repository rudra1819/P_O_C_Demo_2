Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :users do
    get 'registrations/edit'
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'welcome#index'  
end
