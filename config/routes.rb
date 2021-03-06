# frozen_string_literal: true
Rails.application.routes.draw do
  # 後台網址：
  mount RailsAdmin::Engine => '/bs', as: 'rails_admin'
  # 首頁
  root 'tasks#index'
  get 'cancel_task', to: 'tasks#cancel'
  resources :tasks
end
