Rails.application.routes.draw do
  get 'sample_items/index'
  root "sample_items#index"

  resources :sample_items
end
