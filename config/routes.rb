Rails.application.routes.draw do
  resources :detalleordens
  resources :ordens
  resources :productos
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
