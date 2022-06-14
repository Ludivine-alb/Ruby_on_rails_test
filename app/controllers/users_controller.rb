class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    return redirect_to '/users'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    return redirect_to '/users'

  end

  def destroy
    @user = User.find(params[:id]).destroy
    @user.destroy
    return redirect_to '/users'
  end 

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone)
  end

end
