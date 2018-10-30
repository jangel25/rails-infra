Rails.application.routes.draw do
  get 'entrada/index'
  resources :detalleordens
  resources :ordens
  resources :productos
  resources :clientes

  root 'entrada#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
