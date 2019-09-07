Rails.application.routes.draw do

  root 'trip#index'
  
  resources :trip

  resources :location do
    resources :address
  end

end
