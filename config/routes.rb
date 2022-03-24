Rails.application.routes.draw do
  resources :prescription_drugs
  resources :prescriptions
  resources :drugs
  resources :companies
  resources :doctors

  root to: 'prescriptions#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
