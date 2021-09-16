class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_corrent_user, only: [:update, :edit]

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all

  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user),notice: "You have updated user successfully."
    else
      redirect_to request.referer
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:image, :introduction)
  end
  
  def ensure_corrent_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
end
