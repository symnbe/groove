class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
  end
  
  private
  
  def
  user_params
  end
  
end
