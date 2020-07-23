Rails.application.routes.draw do
  root to: 'static#index'
  get 'clients/import' => 'clients#my_import'
  get 'clients/export' => 'clients#export'
  get 'pets/export' => 'clients#export_pet'
  get 'seeds/run'
  get 'static/export_clients_and_pets' => 'static#export_clients_and_pets'
  get 'static/export_appointments' => 'static#export_appointments'
  get 'static/export_inventory' => 'static#export_inventory'
  get 'static/export_salon' => 'static#export_salon'
  get 'static/export_pet' => 'static#export_pet'
  get 'static/export_tickets' => 'static#export_tickets'
  get 'static/export_memberships' => 'static#export_memberships'
  get 'appointments/export' => 'appointments#export'
  get 'appointments/export_services' => 'appointments#export_services'
  get 'appointments/export_statuses' => 'appointments#export_statuses'
  get 'tickets/export' => 'tickets#export'
  get 'tickets/export_skus' => 'tickets#export_skus'
  get 'tickets/export_services' => 'tickets#export_services'
  get 'tickets/export_tips' => 'tickets#export_tips'
  get 'tickets/export_payments' => 'tickets#export_payments'
  get 'memberships/export' => 'memberships#export'
  get 'memberships/export_locations' => 'memberships#export_locations'
  get 'memberships/export_benefits' => 'memberships#export_benefits'
  get 'memberships/export_services' => 'memberships#export_services'
  get 'memberships/export_products' => 'memberships#export_products'

  resources :memberships
  resources :tickets
  resources :inventorystocks
  resources :inventoryskus
  resources :inventoryproducts
  resources :petcategories
  resources :petservices
  resources :appointments, only: [:index, :export]
  resources :pets, only: [:index, :export]
  resources :customfields, only: [:index, :export]
  resources :batchmanifests, only: [:index, :export]
  resources :salonpricings, only: [:index, :export]
  resources :saloncategories, only: [:index, :export]
  resources :staffs, only: [:index, :export]
  resources :salonservices, only: [:index, :export]
  resources :services, only: [:index, :export]
  resources :locations, only: [:index, :export]
  devise_for :users

  resources :clients do
    collection {post :import}
  end

end
