Rails.application.routes.draw do

  root to: 'home#index'
  resources :meshblocks, only: [:index, :show], defaults: { format: :json }
end
