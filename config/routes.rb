# frozen_string_literal: true
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/bs', as: 'rails_admin'
  resources :tasks
end
