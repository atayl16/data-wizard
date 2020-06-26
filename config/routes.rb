Rails.application.routes.draw do
  devise_for :users
  root to: 'static#index'
  get 'clients/import' => 'clients#my_import'
  get 'clients/export' => 'clients#export'

  resources :clients do
    collection {post :import}
  end

end
