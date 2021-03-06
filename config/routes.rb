Rails.application.routes.draw do
  resources :invites do 
    put 'signed_in' => 'invites#signed_in'
  end

  resources :employees
  resources :visitor_logs do
    put 'signed_out' => 'visitor_logs#signed_out'
  end
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
