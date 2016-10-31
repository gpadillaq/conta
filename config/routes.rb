Rails.application.routes.draw do
  resources :payment_frequencies
  resources :credit_types
  resources :credit_applications
  devise_for :users
  resources :bills
  root 'homes#index'
  resources :business_partners
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
