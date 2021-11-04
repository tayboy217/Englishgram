class UsersController < ApplicationController
   before_action :authenticate_user!, except: [:index]
   
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  if @user == current_user
     render :"edit"
  else
    redirect_to users_path, alert: 'invalid access.'
  end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end
  
  private
  
  def user_params 
    params.require(:user).permit(:username, :email, :profile, :profile_image)
 end
end