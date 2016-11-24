Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'
    resources :projects, only: [:index, :show]
    resources :testimonials, only: [:index]
    get '/process', to: 'pages#full_process'

  end
  mount Attachinary::Engine => "/attachinary"
end
