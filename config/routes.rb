Rails.application.routes.draw do
  
 
  get 'user/show'
  get 'user/edit'
  devise_for :users
  root to:"homes#top"
  resources:posts, only:[:new, :create, :index, :edit, :update, :destroy]
end
