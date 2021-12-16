Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :plans do
    resources :resources, only: %i[create destroy]
    resources :tasks, only: %i[create delete edit update destroy]
    resources :diary_entries
    resources :goals
  end

end
