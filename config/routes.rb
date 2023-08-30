Rails.application.routes.draw do
  resources :clients, only: [:show]
  resources :memberships, only: [:create]
  resources :gyms, only: [:show, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Create membership
  #Show gym
  #Destroy gym and associated data => return json:{}
  #Show client
end
