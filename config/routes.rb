Rails.application.routes.draw do
  resources :categories
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
