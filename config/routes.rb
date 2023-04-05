Rails.application.routes.draw do

  # joinable_event_path - POST /joinable_events/:id(.:format)
  post 'joinable_events/:id', to: 'events#joinable', as: 'joinable_event'

  root 'dashboard#home'
  resources :events
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
