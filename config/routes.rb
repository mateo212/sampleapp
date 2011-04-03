Sampleapp::Application.routes.draw do
    resources :users
    resources :sessions, :only => [:new, :create, :destroy]

    match '/signup',  :to => 'users#new'
    match '/signin',  :to => 'sessions#new'
    match '/signout', :to => 'sessions#destroy'
  get "sessions/new"

  get "users/new"

  get "pages/home"

  get "pages/contact"
end
