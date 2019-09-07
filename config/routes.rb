Rails.application.routes.draw do

  devise_for :users
  root 'trip#index'
  
  resources :trip

  resources :location do
    resources :address
  end

end
