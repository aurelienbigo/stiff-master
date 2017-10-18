Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  patch '/dashboard/edit'       => 'registrations#update'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }
  resources :guitars, only: [:new, :create, :index, :show, :edit, :update] do
    member do
      get 'like'
    end
    collection do
      get "compute_price"
    end
    resources :orders, only: [:new, :create] do
      resources :payments, only: [:new, :create]
    end
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  root to: 'pages#home'
  get '/orders/:order_id'           => 'orders#show', as: 'order'
  get '/thanks'                     => 'pages#thanks'
  get '/collection'                 => 'pages#collection'
  get '/payment_confirmation'       => 'pages#payment_confirmation'
  get '/dashboard'                  => 'pages#dashboard'
  post '/dashboard/create_address'  => 'addresses#create', as: 'new_address'
  patch '/dashboard/update_address' => 'addresses#update', as: 'update_address'
  patch '/order/update_address'     => 'addresses#update_address_order', as: 'update_address_order'
end
