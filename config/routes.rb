Rails.application.routes.draw do
  get 'products/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  resources :products do
    get 'products/autocomplete_product_name', :on => :collection
  end
end
