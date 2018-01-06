Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to:  'inquiries#index'
  devise_for :users
  resources :inquiry_types, only:[:index,:create,:new]
  resources :inquiries, only:[:index ,:create,:new]
  resources :galleries,only:[:create,:index]

end
