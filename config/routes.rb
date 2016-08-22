Rails.application.routes.draw do
  resources :bills
  root 'homes#index'
  resources :coins
  resources :business_partner_types
  resources :business_partners
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
