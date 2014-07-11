Rails.application.routes.draw do

  root to: 'home#index'
  resources :meshblocks, only: [:index, :show], defaults: { format: :json }
  resources :area_units, only: [:index, :show], defaults: { format: :json }

end
