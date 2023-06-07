class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @work_posts = @posts.where(category: "work")
    @Hobby_posts = @posts.where(category: "hobby")
    
  end

  def edit
  end

  private

  def
  user_params
  params.require(:user).permit(:name)
  end

end
