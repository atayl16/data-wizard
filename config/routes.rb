Rails.application.routes.draw do
  root to: 'static#index'
  get 'seeds/run' => 'static#run'
  get 'static/export_clients_and_pets' => 'static#export_clients_and_pets'
  get 'static/export_appointments' => 'static#export_appointments'
  get 'static/export_classes' => 'static#export_classes'
  get 'static/export_bundles' => 'static#export_bundles'
  get 'static/export_giftcards' => 'static#export_giftcards'
  get 'static/export_inventory' => 'static#export_inventory'
  get 'static/export_salonset' => 'static#export_salonset'
  get 'static/export_salonsetwclasses' => 'static#export_salonsetwclasses'
  get 'static/export_salonsetwclasseswbundles' => 'static#export_salonsetwclasseswbundles'
  get 'static/export_salonsetwbundles' => 'static#export_salonsetwbundles'
  get 'static/yogawbundles' => 'static#yogawbundles'
  get 'static/detailingwbundles' => 'static#detailingwbundles'
  get 'static/yogawclasses' => 'static#yogawclasses'
  get 'static/detailingwclasses' => 'static#detailingwclasses'
  get 'static/yogawclasseswbundles' => 'static#yogawclasseswbundles'
  get 'static/detailingwclasseswbundles' => 'static#detailingwclasseswbundles'
  get 'static/export_petset' => 'static#export_petset'
  get 'static/export_petsetwclasses' => 'static#export_petsetwclasses'
  get 'static/export_petsetwclasseswbundles' => 'static#export_petsetwclasseswbundles'
  get 'static/export_petsetwbundles' => 'static#export_petsetwbundles'
  get 'static/export_tickets' => 'static#export_tickets'
  get 'static/export_memberships' => 'static#export_memberships'
  get 'static/yoga' => 'static#yoga'
  get 'static/detailing' => 'static#detailing'

  resources :export, only: [] do
    collection do
      get :appointments
      get :appointmentservices
      get :appointmentstatuses
      get :tickets
      get :ticketskus
      get :ticketservices
      get :tips
      get :ticketpayments
      get :giftcards
      get :batchmanifest
      get :locations
      get :pets
      get :clients
      get :customfields
      get :inventoryproducts
      get :inventoryskus
      get :inventorystocks
      get :memberships
      get :membershiplocations
      get :membershipbenefits
      get :membershipservices
      get :membershipproducts
      get :products
      get :petcategories
      get :petservices
      get :saloncategories
      get :salonservices
      get :pricings
      get :staff
      get :attendees
      get :classcategories
      get :events
      get :bundles
      get :bundle_item_groups
      get :bundle_item_group_prices
      get :bundle_items
      get :classsettings
      get :classsettingattendees
      get :classsettinglocations
      get :classsegmenttemplates
    end
  end
  resources :memberships
  resources :tickets
  resources :inventorystocks
  resources :inventoryskus
  resources :inventoryproducts
  resources :petcategories
  resources :petservices
  resources :appointments, only: %i[index export]
  resources :giftcards, only: %i[index export]
  resources :pets, only: %i[index export]
  resources :customfields, only: %i[index export]
  resources :batchmanifests, only: %i[index export]
  resources :salonpricings, only: %i[index export]
  resources :saloncategories, only: %i[index export]
  resources :staffs, only: %i[index export]
  resources :salonservices, only: %i[index export]
  resources :services, only: %i[index export]
  resources :locations, only: %i[index export]
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

  get '*path', to: 'application#handle_404'
end
