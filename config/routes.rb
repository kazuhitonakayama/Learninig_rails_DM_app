Rails.application.routes.draw do
  get 'notifications/index'
  devise_for :users
  root 'users#index'
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]

  # 通知の一覧ページ
  resources :notifications, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
