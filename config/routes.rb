Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :offers, only: %i[create new index] do
    resources :appointments, only: %i[new create]
  end

  resources :appointments, only: %i[update]

  # Customized routes
  get "/my_appointments", to: "appointments#index", as: :my_appointments
end
