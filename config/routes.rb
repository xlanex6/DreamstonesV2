Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'

    get '/process', to: 'pages#full_process'

  end
end
