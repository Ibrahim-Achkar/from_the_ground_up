Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  resources :plans do
    get 'copy'

    member do
      put "like", to: "plans#upvote"
      put "dislike", to: "plans#downvote"
    end

    resources :resources, only: %i[new create destroy]
    resources :tasks, only: %i[new create delete edit update destroy] do
      patch "mark"
    end
    resources :diary_entries
    resources :goals, only: %i[new create edit update delete destroy]
  end

end
