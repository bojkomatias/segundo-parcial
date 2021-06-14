Rails.application.routes.draw do
  resources :appointments
  resources :guards
  resources :workers
  resources :worker_types
  resources :medical_centers
  resources :medical_center_types
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'administrators', to: 'administrators#index'
  get 'toggle_admin', to: 'administrators#toggle_admin'

  root to: 'medical_centers#index'

end
