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
  get '*/export_appointments' => 'export#export_appointments'
  get '*/export_appointmentservices' => 'export#export_appointmentservices'
  get '*/export_appointmentstatuses' => 'export#export_appointmentstatuses'
  get '*/export_tickets' => 'export#export_tickets'
  get '*/export_ticketskus' => 'export#export_ticketskus'
  get '*/export_ticketservices' => 'export#export_ticketservices'
  get '*/export_tips' => 'export#export_tips'
  get '*/export_ticketpayments' => 'export#export_ticketpayments'
  get '*/export_batchmanifests' => 'export#export_batchmanifest'
  get '*/export_locations' => 'export#export_locations'
  get '*/export_pets' => 'export#export_pets'
  get '*/export_clients' => 'export#export_clients'
  get '*/export_customfields' => 'export#export_customfields'
  get '*/export_inventoryproducts' => 'export#export_inventoryproducts'
  get '*/export_inventoryskus' => 'export#export_inventoryskus'
  get '*/export_inventorystocks' => 'export#export_inventorystocks'
  get '*/export_memberships' => 'export#export_memberships'
  get '*/export_membershiplocations' => 'export#export_membershiplocations'
  get '*/export_membershipbenefits' => 'export#export_membershipbenefits'
  get '*/export_membershipservices' => 'export#export_membershipservices'
  get '*/export_membershipproducts' => 'export#export_membershipproducts'
  get '*/export_products' => 'export#export_products'
  get '*/export_petcategories' => 'export#export_petcategories'
  get '*/export_petservices' => 'export#export_petservices'
  get '*/export_saloncategories' => 'export#export_saloncategories'
  get '*/export_salonservices' => 'export#export_salonservices'
  get '*/export_pricings' => 'export#export_pricings'
  get '*/export_staff' => 'export#export_staff'
  get '*/export_attendees' => 'export#export_attendees'
  get '*/export_classcategories' => 'export#export_classcategories'
  get '*/export_events' => 'export#export_events'
  get '*/export_bundles' => 'export#export_bundles'
  get '*/export_bundle_item_groups' => 'export#export_bundle_item_groups'
  get '*/export_bundle_item_group_prices' => 'export#export_bundle_item_group_prices'
  get '*/export_bundle_items' => 'export#export_bundle_items'
  get '*/export_classsettings' => 'export#export_classsettings'
  get '*/export_classsettingattendees' => 'export#export_classsettingattendees'
  get '*/export_classsettinglocations' => 'export#export_classsettinglocations'
  get '*/export_classsegmenttemplates' => 'export#export_classsegmenttemplates'


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
