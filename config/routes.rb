Rails.application.routes.draw do

  scope '(:locale)', locale: /fr/ do
    devise_for :users
    root to: 'pages#home'


  end  
end
