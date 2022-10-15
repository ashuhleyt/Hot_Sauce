Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show'
  get '/spicy_sauces', to: 'spicy_sauces#index'
  get '/spicy_sauces/:id', to: 'spicy_sauces#show'
  get '/restaurants/:id/spicy_sauces', to: 'restaurants_spicy_sauces#index'
  
end
