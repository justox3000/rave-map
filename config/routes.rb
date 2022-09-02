Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "pages/dashboard", to: "pages#dashboard", as: :dashboard
  # Defines the root path route ("/")
  # root "articles#index"
  resources :parties do
    patch :favorite, on: :member
  end
  get "/search", to: "parties#search"
end
