class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.create(user_params)
  end
  
  private
  def user_params
    params.require(:name).permit(:email)
  end
end
