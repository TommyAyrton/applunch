Rails.application.routes.draw do
  devise_for :users
  resources :pedidos
  resources :bebidas
  resources :fondos
  get 'empleados/new'
  get 'empleados/create'
  get 'empleados/update'
  get 'empleados/edit'
  get 'empleados/destroy'
  get 'empleados/index'
  get 'empleados/show'
  get 'pedidos/new'
  get 'pedidos/create'
  get 'pedidos/update'
  get 'pedidos/edit'
  get 'pedidos/destroy'
  get 'pedidos/index'
  get 'pedidos/show'
  get 'mesas/new'
  get 'mesas/create'
  get 'mesas/update'
  get 'mesas/edit'
  get 'mesas/destroy'
  get 'mesas/index'
  get 'mesas/show'
  get 'menus/new'
  get 'menus/create'
  get 'menus/update'
  get 'menus/edit'
  get 'menus/destroy'
  get 'menus/index'
  get 'menus/show'
  get 'fondos/new'
  get 'fondos/create'
  get 'fondos/update'
  get 'fondos/edit'
  get 'fondos/destroy'
  get 'fondos/index'
  get 'fondos/show'
  get 'bebidas/new'
  get 'bebidas/create'
  get 'bebidas/update'
  get 'bebidas/edit'
  get 'bebidas/destroy'
  get 'bebidas/index'
  get 'bebidas/show'
  get 'entradas/new'
  get 'entradas/create'
  get 'entradas/update'
  get 'entradas/edit'
  get 'entradas/destroy'
  get 'entradas/index'
  get 'entradas/show'
  get 'welcome/index'
  
  post 'pedidos/edit'

  post 'pedidos/new'

  root 'welcome#index'

  get 'entradas' => 'entradas#index'

  resources :entradas
  resources :mesas
  resources :empleados
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
