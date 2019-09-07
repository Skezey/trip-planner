Rails.application.routes.draw do

  root 'trips#index'

  resources :trip

  resources :location do
    resources :address
  end

end
