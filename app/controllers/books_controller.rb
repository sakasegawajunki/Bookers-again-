class BooksController < ApplicationController


  def show
    @book = Book.find(params[:id])
    @user=@book.user
    @newbook = Book.new
  end

  def index
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @user = current_user
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id), notice: "You have created book successfully."
    else
      @books = Book.all
      render 'index'
    end
  end


  def edit
    @book = Book.find(params[:id])
    @user = @book.user
    if @user != current_user
      redirect_to books_path
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book.id),notice: "You have updated book successfully."
    else
      render "edit"
    end

  end


  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path,notice: "You have destroy book successfully."
    else
     redirect_to request.referer
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
