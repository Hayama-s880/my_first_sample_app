class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def new
    @book = Book.new
  end
  def create
    @book = Book.new(books_params)
    @book.save
    redirect_to controller: :books, action: :index
  end
  def delete
    @book = Book.find_by(id: params[:id])
    @book.delete
    redirect_to controller: :books, action: :index
  end
  def edit
    @book = Book.find_by(id: params[:id])
  end
  def update
    @book = Book.find_by(id: params[:id])
    @book.update(books_params)
    redirect_to controller: :books, action: :index
  end

  private
  def books_params
    params.require(:book).permit(:title,:author,:pages)
  end
end