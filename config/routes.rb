Rails.application.routes.draw do
  root "sessions#new"

  resources :users do
    resources :projects
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :session, only: [:new, :create, :destroy]

  get "signup", to: "users#new", as: "signup"
  get "login", to: "session#new", as: "login"
  get "logout", to: "session#destroy", as: "logout"
end
