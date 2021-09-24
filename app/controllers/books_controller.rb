class BooksController < ApplicationController
  def index
  end

  def show
    @book=Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    binding.pry
    @book.save
    redirect_to book_path(@book.id)
  end

  def edit
  end
  
  def destroy
   book = Book.find(params[:id])
   book.destroy
   redirect_to books_path
  end
  
 private
  def book_params
    params.permit(:title, :body)
  end
end
