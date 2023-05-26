Rails.application.routes.draw do
  
  get 'posts/new'
  get 'posts/index'
  get 'posts/edit'
  devise_for :users
  root to:"homes#top"
end
