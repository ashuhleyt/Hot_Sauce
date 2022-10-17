Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new'
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants/:id/spicy_sauces/new', to: 'restaurants_spicy_sauces#new'
  post '/spicy_sauces', to: 'restaurants_spicy_sauces#create'
  get '/restaurants/:id', to: 'restaurants#show'
  get '/spicy_sauces', to: 'spicy_sauces#index'
  get '/spicy_sauces/:id', to: 'spicy_sauces#show'
  get '/restaurants/:id/spicy_sauces', to: 'restaurants_spicy_sauces#index'
  get '/restaurants/:id/edit', to: 'restaurants#edit'
  patch '/restaurants/:id', to: 'restaurants#update'
  post '/restaurants/:id/spicy_sauces', to: 'restaurants_spicy_sauces#create'
end
