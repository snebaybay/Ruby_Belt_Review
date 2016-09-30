Rails.application.routes.draw do

  get 'users/index'

  post 'users/login'

  post 'users/register'

  post 'users/update'

  get '/users/logout'

  get 'users/edit'

  root 'users#index'

  get '/events' => 'events#index'

  post 'events/create'

  get '/events/join/:id' => 'events#join' 

  get '/events/edit/:id' => 'events#edit' #this is edit for events

  get '/events/:id' => 'events#show'

  get 'events/destroy'

  post '/comments/create' => 'events#create_comment'

 

end 
