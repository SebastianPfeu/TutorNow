Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers, only: %i[create new index]

  # Customized routes
  get "/my_appointments", to: "appointments#index"
end
