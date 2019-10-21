Rails.application.routes.draw do
  devise_for :pros
  devise_for :clients
  
  resources :services
  # resources :pros
  # resources :clients
  resources :appointments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
