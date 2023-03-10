Rails.application.routes.draw do
  resources :posts 
  get 'posts/index'
  get 'posts/search'
  get 'post/new'
  post 'post/create'
  get 'post/show'
  get 'post/edit'
  get 'post/update'
  get 'post/destroy'
  devise_for :searchers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  root to: "home#index"
  get 'home/show'
  get 'home/search'
end
