Rails.application.routes.draw do
  get '/' => 'presidents#index'
  get '/presidents' => 'presidents#index'
  get '/presidents/new' => 'presidents#create'
  post '/presidents' => 'recipes#create'

  get '/presidents/:id' => 'presidents#show'
end