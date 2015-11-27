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
    if book_params[:book][:read_status] == "true"
      @book.update(
        title: book_params[:book][:title],
        author: book_params[:book][:author],
        read_status: true,
        genre: book_params[:book][:genre]
        )
    else
      @book.update(
        title: book_params[:book][:title],
        author: book_params[:book][:author],
        read_status: false,
        genre: book_params[:book][:genre]
        )
    end
    redirect_to "/books"
  end

  def destroy
    id = params[:id]
    Book.destroy(id)
    redirect_to "/"
  end

  private

  def book_params
    params.permit(book:[:title, :author, :genre, :read_status])
  end

  def to_bool(input)
    return true if input == "true"
    return false if input == "false"
    return nil
  end

end
