Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists do
    resources :songs, except: [:delete]
  end

  resources :songs, only: [:show]
  resources :playlists, except: [:delete]

  get '/auth/spotify/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
