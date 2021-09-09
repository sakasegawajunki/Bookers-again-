class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @books = @user.books
<<<<<<< HEAD
=======
    @book = Book.new
>>>>>>> 0cf05d04bb43dbb35fb6ae67574f2a81a48de563
  end

  def index
    @users = User.all
<<<<<<< HEAD
    @user = current_user

=======
    @book = Book.new
>>>>>>> 0cf05d04bb43dbb35fb6ae67574f2a81a48de563
  end


  def edit
  end
<<<<<<< HEAD

  private
  def user_params
    params.require(:user).permit(:name,:image, :introduction)
=======
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
>>>>>>> 0cf05d04bb43dbb35fb6ae67574f2a81a48de563
  end
end
