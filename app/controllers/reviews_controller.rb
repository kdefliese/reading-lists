class ReviewsController < ApplicationController

  def create
    @book = Book.find(params["book_id"])
    review = Review.create(body: review_params[:review][:body], reviewer: review_params[:review][:reviewer], book_id: @book.id )
    redirect_to book_path(@book.id)
  end

  def new
    @review = Review.new
    @book = Book.find(params["book_id"])
  end


  private

  def review_params
    params.permit(review:[:body, :reviewer])
  end
end
