Rails.application.routes.draw do
  resources :teams_games
  resources :games
  resources :teams
  resources :users_teams
  resources :locations
  resources :users, only: [:create, :index, :show ]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
