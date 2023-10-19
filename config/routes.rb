Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root "dashboard#index"
  resources :class_subjects
  resource :profile
end
