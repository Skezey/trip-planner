Rails.application.routes.draw do

  root 'trips#index'
<<<<<<< HEAD
  
  resources :trips

=======
  resources :trips
  
>>>>>>> 9474c9492f5d2af0bf89d9fb9af094df58d9d548
  resources :locations do
    resources :addresses
  end
end
