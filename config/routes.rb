Rails.application.routes.draw do
  get 'users/new'
  root 'tops#top'
  get  '/signup', to: 'users#new'

  resources :users
end
