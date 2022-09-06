Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "pages/dashboard", to: "pages#dashboard", as: :dashboard
  get "pages/map", to: "pages#map", as: :map
  # Defines the root path route ("/")
  # root "articles#index"
  resources :parties do
    patch :favorite, on: :member
    resources :comments, only: [:new, :create]
  end
  get "/search", to: "parties#search"
  get "/create", to: "parties#create"
end
