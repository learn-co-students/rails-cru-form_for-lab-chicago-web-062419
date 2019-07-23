Rails.application.routes.draw do
  get 'genres/index'

  get 'genres/show'

  get 'genres/edit'

  get 'genres/new'

  get 'artists/index'

  get 'artists/show'

  get 'artists/edit'

  get 'artists/new'

  get 'artist/index'

  get 'artist/show'

  get 'artist/edit'

  get 'artist/new'

  resources :genres
  resources :songs
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
