Rails.application.routes.draw do
  get '/events' => 'events#index'

  post 'events/create'

  get 'events/show'

  get 'events/edit'

  get 'events/destroy'

  get 'users/index'

  post 'users/login'

  post 'users/register'

  post 'users/update'

  get 'users/logout'

  get 'users/edit'

  root 'users#index'

end 
