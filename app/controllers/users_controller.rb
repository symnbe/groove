class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  @all_posts = @user.posts
  @work_posts = @all_posts.where(category: "work")
  @hobby_posts = @all_posts.where(category: "hobby")
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def
  user_params
  params.require(:user).permit(:name)
  end

end
