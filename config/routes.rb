My15five::Application.routes.draw do
  resources :projects

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resources :reports do
    collection do
      get :current
      get :archive
    end
  end
  resources :answers

  root :to => 'pages#home'
end