class BooksController < ApplicationController


  def show
    @book = Book.find(params[:id])
    @user=@book.user
    @newbook = Book.new
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id), notice: "You have created book successfully."
    else
      @books = Book.all
      render 'index'
    end
  end
<<<<<<< HEAD

  def show
    @book = Book.find(params[:id])
    @user = @book.user
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

=======
  
  def edit
  end
  
  def update
>>>>>>> 0cf05d04bb43dbb35fb6ae67574f2a81a48de563
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
