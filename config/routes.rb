Rails.application.routes.draw do
  devise_for :users
  root 'tops#top'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
