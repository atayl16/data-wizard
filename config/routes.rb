Rails.application.routes.draw do
  resources :inventorystocks
  resources :inventoryskus
  resources :inventoryproducts
  resources :petcategories
  resources :petservices
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
  get 'appointments/export' => 'appointments#export'
  get 'appointments/export_services' => 'appointments#export_services'
  get 'appointments/export_statuses' => 'appointments#export_statuses'

  #get 'static/salons' => stat

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
