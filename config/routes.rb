Rails.application.routes.draw do
  resources :visitor_logs
  resources :locations
  devise_for :users, controllers: {
      sessions:           "users/sessions",
      registrations:      "users/registrations",
      confirmations:      "users/confirmations"
    }
  root 'dashboard#index'

  get 'visitors_dash' => 'dashboard#visitors_dash'
  get 'deliveries_dash' => 'dashboard#deliveries_dash'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
