Rails.application.routes.draw do

  mount ForestLiana::Engine => '/forest'
  mount Attachinary::Engine => "/attachinary"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  scope '(:locale)', locale: /fr/ do
    root to: 'pages#home'
    resources :projects, only: [:index, :show, :new, :create, :edit, :update]
    resources :testimonials, only: [:index, :new, :create]
    resources :teams, only: [:index, :new, :create]
    get '/process', to: 'pages#full_process'
    get '/mentions', to: 'pages#legals_mentions'


    ###### redirect
    get '/ask-more-information', to: redirect('/process', status: 301)
    get 'buildinginfrance.html', to: redirect('/process', status: 301)
    get 'users/dreamstones', to: redirect('/process', status: 301)
    get 'contact.html', to: redirect('/process', status: 301)
    get 'building-projects.html', to: redirect('/process', status: 301)
    get 'projects.html', to: redirect('/process', status: 301)
    get 'legal-mentions.html', to: redirect('/process', status: 301)
    get 'italy.html', to: redirect('/process', status: 301)
    get 'builder-brokers-faqs.html', to: redirect('/process', status: 301)
    get 'about.html', to: redirect('/process', status: 301)
    get 'contact-us.html', to: redirect('/process', status: 301)
    get 'homebuilding.html', to: redirect('/process', status: 301)
    get 'user/logout', to: redirect('/process', status: 301)
    get 'evaluation.html', to: redirect('/process', status: 301)
    get 'dreamstones-services.html', to: redirect('/process', status: 301)
    get 'renovation.html-0', to: redirect('/process', status: 301)
    get 'renovation.html', to: redirect('/process', status: 301)
    get 'faqs.html', to: redirect('/process', status: 301)
    get 'extensionveranda.html', to: redirect('/process', status: 301)
    get 'extension.html', to: redirect('/process', status: 301)
    get 'united-kingdom.html', to: redirect('/process', status: 301)
    get 'spain.html', to: redirect('/process', status: 301)
    get 'design-build-process.html', to: redirect('/process', status: 301)
    get 'design.html', to: redirect('/process', status: 301)
    get 'preparation.html', to: redirect('/process', status: 301)
    get 'new-build.html', to: redirect('/process', status: 301)
    get 'portugal.html', to: redirect('/process', status: 301)
  end
end
