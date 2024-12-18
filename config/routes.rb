Rails.application.routes.draw do
  devise_for :users


  resources :subscriptions, only: [ :create ]

  namespace :admin do
    resources :users do
      resources :forks
      resources :chapters
      resources :stories
      resources :comments
    end

    resources :chapters do
      resources :forks
      resources :comments
    end

    resources :stories do
      resources :chapters
      resources :forks
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "welcome#index"
  get "about_us", to: "welcome#about_us", as: "welcome_about_us"
end
