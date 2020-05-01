Rails.application.routes.draw do
  get 'stories/new'

  get 'users/new'

  root 'static_pages#home'

  get  '/help', to: 'static_pages#help'

  get  '/about',   to: 'static_pages#about'

  # get  '/stories', to: 'static_pages#stories'
  
  get  '/signup', to: 'users#new'

  resources :users
  resources :stories
end
