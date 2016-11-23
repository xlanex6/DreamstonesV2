Rails.application.routes.draw do

  devise_for :users
  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'

    get '/process', to: 'pages#full_process'



  end
end
