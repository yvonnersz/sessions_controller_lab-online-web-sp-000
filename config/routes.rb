Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create' as: 'login'
  post '/logout' => 'sessions#destroy'
end
