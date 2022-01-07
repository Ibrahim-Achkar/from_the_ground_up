Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :plans do
    member do
    put "like", to: "plans#upvote"
    put "dislike", to: "plans#downvote"
    end
    resources :resources, only: %i[new create destroy]
    resources :tasks, only: %i[new create delete edit update destroy]
    resources :diary_entries
    resources :goals
  end

end
