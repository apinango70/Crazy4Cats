Rails.application.routes.draw do
  resources :articles
  get 'pages/home'
  devise_for :users

  root 'articles#index'
  post '/new_user_reaction', to: 'reactions#new_user_reaction', as: 'new_user_reaction'
end
