Rails.application.routes.draw do
  root to: 'artists#index'

  resources :playlists, except: [:edit, :update] do
    member do
      post 'add_song'
      post 'remove_song'
    end
  end

  get '/songs', to: 'songs#index'
  resources :artists do
    resources :songs
    resources :genres
  end
end
