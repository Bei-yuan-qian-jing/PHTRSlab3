Rails.application.routes.draw do
  get 'sessions/new'

  post 'sessions/create'

  get 'applicants/new'

  post 'applicants/create'

  root 'sessions#new'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
