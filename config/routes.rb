Rails.application.routes.draw do
  get 'landing_pages/home'
  get 'landing_pages/help'
  root 'landing_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
