Rails.application.routes.draw do
  resources :regions
  resources :months
  resources :years
  
  root 'application#index'
end
