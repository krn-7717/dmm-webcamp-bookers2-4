Rails.application.routes.draw do
  devise_for :users

  # get 'users/show'
  # get 'users/edit'
  resources :users, only: [:show, :edit, :index, :update]

  # get 'books/new'
  # get 'books/show'
  # get 'books/index'
  # get 'books/edit'
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  # get 'homes/top'
  root to: "homes#top"
  get 'home/about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
