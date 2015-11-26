class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params[:book])
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @book = Book.find(id)
  end

  def show
    id = params[:id]
    @book = Book.find(id)
  end

  def update
    id = params[:id]
    @book = Book.find(id)
    @book.update(
      title: book_params[:book][:title],
      author: book_params[:book][:author],
      read_status: book_params[:book][:read_status],
      genre: book_params[:book][:genre]
      )
    redirect_to "/"
  end

  def destroy
    id = params[:id]
    Book.destroy(id)
    redirect_to "/"
  end

  private

  def book_params
    params.permit(book:[:name])
  end
end
