Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'site#home'

  get '/signup_or_login' => 'users#new'
  get '/users' => 'users#index'
  post '/registration' => 'users#create_for_registration'
  post '/login' => 'users#create_for_login'
  delete '/logout' => 'users#destroy_for_logout'

  get '/profiles/user' => 'profiles#show_for_user'
  get '/profiles/barber' => 'profiles#show_for_barber'
  post '/profiles/barber' => 'profiles#add_haircut'
  delete '/profiles/:photo_id' => 'profiles#delete_haircut'


  # If this is an API, it needs to render JSON in the action
  # post "/haircuts/like" => "blah#like"
end
