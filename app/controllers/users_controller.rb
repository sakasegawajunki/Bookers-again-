class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
    @users = User.all
    @book = Book.new
  end


  def edit
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
