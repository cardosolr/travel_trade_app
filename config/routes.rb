Rails.application.routes.draw do
  resources :regions
  resources :months
  resources :years
  resources :reg_months
  
  root 'application#index'
end
