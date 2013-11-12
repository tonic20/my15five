My15five::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :reports do
    collection do
      get :current
    end
  end
  resources :answers

  root :to => 'pages#home'
end