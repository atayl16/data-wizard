Rails.application.routes.draw do
  resources :batchmanifests
  resources :salonpricings
  resources :saloncategories
  resources :staffs
  resources :salonservices
  resources :services
  resources :locations
  devise_for :users
  root to: 'static#index'
  get 'clients/import' => 'clients#my_import'
  get 'clients/export' => 'clients#export'
  get 'seeds/run'

  resources :clients do
    collection {post :import}
  end

end
