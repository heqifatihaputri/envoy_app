Rails.application.routes.draw do
  resources :invites
  resources :employees
  resources :visitor_logs
  resources :locations
  devise_for :users, controllers: {
      sessions:           "users/sessions",
      registrations:      "users/registrations",
      confirmations:      "users/confirmations"
    }
  root 'dashboard#index'

  get 'global_admin_dash' => 'dashboard#global_admin_dash'
  post 'bulk_invites' => 'invites#bulk_invites'
  get 'admin' => 'admin#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
