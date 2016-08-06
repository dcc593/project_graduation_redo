Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'site#home'

  get '/signup_or_login' => 'users#new'
  get '/users' => 'users#index'
  post '/registration' => 'users#create_for_registration'
  post '/login' => 'users#create_for_login'
  delete '/logout' => 'users#destroy_for_logout'

  get '/profiles' => 'profiles#show'
end
