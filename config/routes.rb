Rottenpotatoes::Application.routes.draw do
#   resources :movies 
  # Add new routes here

  resources :movies do
    member do
      get 'show_by_director'
    end
end
  root to: redirect('/movies')
end
