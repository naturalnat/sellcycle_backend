Rails.application.routes.draw do
  resources :listings
  resources :users
  match '/users/login', to: 'users#login', via: 'post', as: :login # log in route 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
