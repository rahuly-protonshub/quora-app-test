Rails.application.routes.draw do
  devise_for :users
  root to: "questions#index"
  resources :questions, only: [:index, :show]
  get 'follow_user', to: 'users#follow_user'
  get 'unfollow_user', to: 'users#unfollow_user'
  get 'follow_topic', to: 'users#follow_theme'
  get 'unfollow_topic', to: 'users#unfollow_theme'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
