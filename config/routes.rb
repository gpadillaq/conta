Rails.application.routes.draw do
  resources :payment_frequencies
  resources :credit_types
  resources :credit_applications
  devise_for :users
  resources :bills
  root 'homes#index'
  resources :business_partners
  resources :business_partner_types
  resources :coins
  resources :products
  resources :storehouses
end
