Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get '/about', to: "welcome#about"
  root 'welcome#index'

  get '*path' => redirect('/')
end
