Rails.application.routes.draw do
  devise_for :user, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
  root 'main#index'
  resources :users
  post '/users/create_user', to: 'users#create'

end
