Rails.application.routes.draw do
  root to: 'static#index'
  get 'clients/import' => 'clients#my_import'
  get 'clients/export' => 'clients#export'
  get 'pets/export' => 'pets#export'
  get 'seeds/run'
  resources :pets
  resources :batchmanifests
  resources :salonpricings
  resources :saloncategories
  resources :staffs
  resources :salonservices
  resources :services
  resources :locations
  devise_for :users

  resources :clients do
    collection {post :import}
  end

end
