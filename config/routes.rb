Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: 'lists#index'

  # # Index lists
  # get '/lists', to: 'lists#index'

  # # New list
  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists', to: 'lists#create'

  # # Show list
  # get '/lists/:id', to: 'lists#show', as: :list

  # # New Bookmark
  # get '/lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :new_list_bookmark
  # post '/lists/:id', to: 'bookmarks#create'

  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
end
