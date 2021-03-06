Rails.application.routes.draw do
  root 'main#index'

  devise_for :user, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  resources :users
  post '/users/create_user', to: 'users#create'
  post '/users/get_user', to: 'users#get_user'
  post '/users/update_user', to: 'users#update_user'

  get '/styles', to: 'styles#edit'
  post '/styles/update', to: 'styles#update'

end
