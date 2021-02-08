Rails.application.routes.draw do
  get 'kanjas/new'
  devise_for :users
  get 'landing_pages/home'
  get 'landing_pages/help'
  root 'landing_pages#home'
  
  resources :kanjas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
