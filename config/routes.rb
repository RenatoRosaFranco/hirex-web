# frozen_string_literal: true

Rails.application.routes.draw do

  # Authentication
  devise_for :users, {}

  # Application
  root to: 'jobs#index'
  resources :feedbacks, only: [:create]
  resources :searches, only: [:index]
  resources :jobs

  # Dashboard
  namespace :dashboard do
    root to: 'applications#index'
  end
end
