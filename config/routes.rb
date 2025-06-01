Rails.application.routes.draw do
  namespace :admin do
    resources :schedules
  end
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'schedules#index'
  resources :schedules, only: :index
end
