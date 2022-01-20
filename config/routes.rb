Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
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

  match "/404", to: "errors#not_found", as: 'not_found', via: :all
  match "/500", to: "errors#internal_server_error", as: 'internal_server_error', via: :all

end
