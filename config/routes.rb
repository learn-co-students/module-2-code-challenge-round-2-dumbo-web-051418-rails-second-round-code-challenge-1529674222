Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

  resources :vendors#, only: [:show, :index]
  resources :sweets#, only: [:show, :index]
  resources :vendor_sweets#, only: [:new, :create, :show]

end
