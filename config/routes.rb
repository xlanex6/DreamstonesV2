Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'
    resources :projects, only: [:index, :show, :new, :create]
    resources :testimonials, only: [:index, :new, :create]
    resources :teams, only: [:index, :new, :create]
    get '/process', to: 'pages#full_process'

  end
end
