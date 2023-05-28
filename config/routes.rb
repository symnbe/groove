Rails.application.routes.draw do
  
 
  devise_for :users
  root to:"homes#top"
  resources:posts, only:[:new, :create, :index, :edit, :update, :destroy]
end
