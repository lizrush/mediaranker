Mediatracker::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Root of my site defined here
  root 'welcome#index'

  get '/books' => 'books#index', as: :books 
  get '/books/:id' => 'books#show', as: :book
  get '/books/:id/edit' => 'books#edit', as: :edit_book
  get '/books/new' => 'books#new', as: :new_book
  post '/books' => 'books#create', as: :create_book
  patch '/books/:id' => 'books#update', as: :update_book
  delete 'books/:id' => 'books#destroy', as: :destroy_book

  get '/albums' => 'albums#index', as: :albums
  get '/albums/:id' => 'albums#show', as: :album
  get '/albums/:id/edit' => 'albums#edit', as: :edit_album
  get '/albums/new' => 'albums#new', as: :new_album
  post '/albums' => 'albums#create', as: :create_album
  patch '/albums' => 'albums#update', as: :update_album
  delete '/albums/:id' => 'albums#destroy', as: :destroy_album

  get '/movies' => 'movies#index', as: :movies
  get '/movies/:id' => 'movies#show', as: :movie
  get '/movies/:id/edit' => 'movies#edit', as: :edit_movie
  get '/movies/new' => 'movies#new', as: :new_movie
  post '/movies' => 'movies#create', as: :create_movie
  patch '/movies/:id' => 'movies#update', as: :update_movie
  delete '/movies/:id' => 'movies#destroy', as: :destroy_movie

end
