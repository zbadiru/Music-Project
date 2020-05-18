Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :artists, except: :edit
  get '/artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
  resources :genres
  # , except: :edit
  # get '/genres/:id/edit', to: 'genres#edit', as: 'edit_genre'

  resources :songs
end
