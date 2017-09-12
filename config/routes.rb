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
end