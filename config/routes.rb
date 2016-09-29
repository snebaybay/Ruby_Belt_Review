Rails.application.routes.draw do
  get '/events' => 'events#index'

  get 'events/create'

  get 'events/show'

  get 'events/edit'

  get 'events/destroy'

  get 'users/index'

  post 'users/login'

  post 'users/register'

  get 'users/logout'

  root 'users#index'

end 
