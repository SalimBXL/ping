Rails.application.routes.draw do

  resources :ips
  resources :rooms
  resources :sectors
  resources :services
  resources :devices
  resources :operating_systems
  root "home#index"
end
