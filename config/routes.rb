Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/auth/twitter/callback', to: 'sessions#create', as: 'callback'
  get '/auth/failure', to: 'sessions#error', as: 'failure'
  get '/profile', to: 'sessions#show', as: 'profile'

  scope "/search" do
    post '/people', to: 'search#people', as: 'search_people'
    post '/tweet', to: 'search#tweet', as: 'search_tweet'
  end

  delete '/signout', to: 'sessions#destroy', as: 'signout'
end
