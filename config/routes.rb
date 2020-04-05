Rails.application.routes.draw do
  devise_for :users
  root 'tops#top'
end
