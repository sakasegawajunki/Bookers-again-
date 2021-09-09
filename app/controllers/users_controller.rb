class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @user = current_user
    @book = Book.new

  end


  def edit
  end


  private
  def user_params
    params.require(:user).permit(:name,:image, :introduction)

  end
end
