Rails.application.routes.draw do
  root to: 'static#index'
  get 'clients/import' => 'clients#my_import'
  get 'seeds/run'
  get 'static/export_clients_and_pets' => 'static#export_clients_and_pets'
  get 'static/export_appointments' => 'static#export_appointments'
  get 'static/export_inventory' => 'static#export_inventory'
  get 'static/export_salonset' => 'static#export_salonset'
  get 'static/export_petset' => 'static#export_petset'
  get 'static/export_tickets' => 'static#export_tickets'
  get 'static/export_memberships' => 'static#export_memberships'
  get '*/export_appointments' => 'application#export_appointments'
  get '*/export_appointmentservices' => 'application#export_appointmentservices'
  get '*/export_appointmentstatuses' => 'application#export_appointmentstatuses'
  get '*/export_tickets' => 'application#export_tickets'
  get '*/export_ticketskus' => 'application#export_ticketskus'
  get '*/export_ticketservices' => 'application#export_ticketservices'
  get '*/export_tips' => 'application#export_tips'
  get '*/export_ticketpayments' => 'application#export_ticketpayments'
  get '*/export_batchmanifests' => 'application#export_batchmanifest'
  get '*/export_locations' => 'application#export_locations'
  get '*/export_pets' => 'application#export_pets'
  get '*/export_clients' => 'application#export_clients'
  get '*/export_customfields' => 'application#export_customfields'
  get '*/export_inventoryproducts' => 'application#export_inventoryproducts'
  get '*/export_inventoryskus' => 'application#export_inventoryskus'
  get '*/export_inventorystocks' => 'application#export_inventorystocks'
  get '*/export_memberships' => 'application#export_memberships'
  get '*/export_membershiplocations' => 'application#export_membershiplocations'
  get '*/export_membershipbenefits' => 'application#export_membershipbenefits'
  get '*/export_membershipservices' => 'application#export_membershipservices'
  get '*/export_membershipproducts' => 'application#export_membershipproducts'
  get '*/export_products' => 'application#export_products'
  get '*/export_petcategories' => 'application#export_petcategories'
  get '*/export_petservices' => 'application#export_petservices'
  get '*/export_saloncategories' => 'application#export_saloncategories'
  get '*/export_salonservices' => 'application#export_salonservices'
  get '*/export_pricings' => 'application#export_pricings'
  get '*/export_staff' => 'application#export_staff'


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
