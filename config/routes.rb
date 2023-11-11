Rails.application.routes.draw do
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "/articles", to: "articles#index"
  get "up" => "rails/health#show", as: :rails_health_check

  get "top" => "home#top"
  get "test" => "home#test"
  get "game" => "games#InGame"


  # Defines the root path route ("/")
  # root "posts#index"
end
