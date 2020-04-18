Rails.application.routes.draw do
  root 'tops#top'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
end
