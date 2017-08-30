Rails.application.routes.draw do
  get '/president_url' => 'presidents#all_presidents_action'
end
