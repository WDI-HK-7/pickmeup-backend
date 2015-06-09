Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :posts
  
  get 'users/:id/posts' => 'posts#userposts'

  devise_scope :user do
    get 'authenticated' => 'users/sessions#authenticated'
  end


end

