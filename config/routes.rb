Rails.application.routes.draw do

  root 'trips#index'
<<<<<<< HEAD
  resources :trips

=======

  resources :trips

>>>>>>> 9059da9c04a82774a9acf818bfd1d2e72fbb4adc
  resources :locations do
    resources :addresses
  end
end
