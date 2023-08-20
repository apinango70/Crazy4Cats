Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :comments, only: [:create]

  get 'pages/home'
  root 'articles#index'
  post '/new_user_reaction', to: 'reactions#new_user_reaction', as: 'new_user_reaction'
end
