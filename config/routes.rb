Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :posts
  resources :songs
  resources :guitars
  get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  devise_for :users
  resources :users, only: [:show]
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end
  
  root 'posts#index'


end
