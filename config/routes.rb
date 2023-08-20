Rails.application.routes.draw do
  resources :articles
  get 'pages/home'
  devise_for :users


  root "articles#index"
end
