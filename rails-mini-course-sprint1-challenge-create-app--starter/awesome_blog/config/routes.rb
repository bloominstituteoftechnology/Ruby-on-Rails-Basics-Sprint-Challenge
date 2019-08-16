Rails.application.routes.draw do
  resources :quotes
  resources :posts
  resources :appstats, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
