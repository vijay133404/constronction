Rails.application.routes.draw do
  get 'sliders/new'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to:  'inquiries#index'
  devise_for :users
  resources :inquiries, only:[:index ,:create,:new]
end
