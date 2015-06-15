Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :orders
    resource :unifaun_export_settings, only: [:edit, :update]
  end
end
