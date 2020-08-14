Rails.application.routes.draw do
  root to: 'static#index'
  get 'seeds/run' => 'static#run'
  get 'static/export_clients_and_pets' => 'static#export_clients_and_pets'
  get 'static/export_appointments' => 'static#export_appointments'
  get 'static/export_classes' => 'static#export_classes'
  get 'static/export_bundles' => 'static#export_bundles'
  get 'static/export_inventory' => 'static#export_inventory'
  get 'static/export_salonset' => 'static#export_salonset'
  get 'static/export_salonsetwclasses' => 'static#export_salonsetwclasses'
  get 'static/export_salonsetwclasseswbundles' => 'static#export_salonsetwclasseswbundles'
  get 'static/export_salonsetwbundles' => 'static#export_salonsetwbundles'
  get 'static/export_petset' => 'static#export_petset'
  get 'static/export_petsetwclasses' => 'static#export_petsetwclasses'
  get 'static/export_petsetwclasseswbundles' => 'static#export_petsetwclasseswbundles'
  get 'static/export_petsetwbundles' => 'static#export_petsetwbundles'
  get 'static/export_tickets' => 'static#export_tickets'
  get 'static/export_memberships' => 'static#export_memberships'


  resources :export, only: [] do
    collection do
      get :export_appointments
      get :export_appointmentservices
      get :export_appointmentstatuses
      get :export_tickets
      get :export_ticketskus
      get :export_ticketservices
      get :export_tips
      get :export_ticketpayments
      get :export_batchmanifest
      get :export_locations
      get :export_pets
      get :export_clients
      get :export_customfields
      get :export_inventoryproducts
      get :export_inventoryskus
      get :export_inventorystocks
      get :export_memberships
      get :export_membershiplocations
      get :export_membershipbenefits
      get :export_membershipservices
      get :export_membershipproducts
      get :export_products
      get :export_petcategories
      get :export_petservices
      get :export_saloncategories
      get :export_salonservices
      get :export_pricings
      get :export_staff
      get :export_attendees
      get :export_classcategories
      get :export_events
      get :export_bundles
      get :export_bundle_item_groups
      get :export_bundle_item_group_prices
      get :export_bundle_items
      get :export_classsettings
      get :export_classsettingattendees
      get :export_classsettinglocations
      get :export_classsegmenttemplates
    end
  end
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
  resources :classsegmenttemplates
  resources :classsettings
  resources :classsettinglocations
  resources :classsettingattendees
  resources :events
  resources :classcategories
  resources :attendees
  resources :clients
  resources :bundles
  resources :bundle_items
  resources :bundle_item_groups
  resources :bundle_item_group_prices
  devise_for :users

  get "*path", :to => "application#handle_404"

end
