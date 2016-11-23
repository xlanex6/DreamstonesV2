Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'

    get '/process', to: 'pages#full_process'

    resources :projects, only: [:index, :show]

  end
end
