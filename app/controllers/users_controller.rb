class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def index
    @users = User.all
    @user = current_user

  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:name,:image, :introduction)
  end
end
