Rails.application.routes.draw do
  get '/' => 'presidents#index'
  get '/presidents' => 'presidents#index'
  get '/presidents/new' => 'presidents#new'
  post '/presidents' => 'presidents#create'

  get '/presidents/random' => 'presidents#random'
  get '/presidents/:id' => 'presidents#show'

  get '/presidents/:id/edit' => 'presidents#edit'
  patch '/presidents/:id' => 'presidents#update'

  delete '/presidents/:id' => 'presidents#destroy'

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"

  get "/checkout" => "carted_products#index"
  post "/checkout" => "carted_products#create"
end