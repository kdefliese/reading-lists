class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params[:book])
    redirect_to "/books"
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
        read_status: params[:read_status],
        genre: book_params[:book][:genre],
        rating: book_params[:book][:rating],
        reading_list_id: book_params[:book][:reading_list_id]
        )
    redirect_to "/books"
  end

  def destroy
    id = params[:id]
    Book.destroy(id)
    redirect_to "/books"
  end

  private

  def book_params
    params.permit(book:[:title, :author, :genre, :read_status, :rating, :reading_list_id])
  end

end
