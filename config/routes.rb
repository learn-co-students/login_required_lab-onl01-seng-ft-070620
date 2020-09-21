Rails.application.routes.draw do
  root 'application#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/delete' => 'sessions#destroy'
  get '/home' => 'secrets#show'
end
