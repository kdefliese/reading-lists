class ReadingListsController < ApplicationController
  def index
    @reading_lists = ReadingList.all
  end

  def new
    @reading_list = ReadingList.new
  end

  def create
    ReadingList.create(reading_list_params[:reading_list])
    redirect_to "/"
  end

  def edit
    id = params[:id]
    @reading_list = ReadingList.find(id)
  end

  def show
    id = params[:id]
    @reading_list = ReadingList.find(id)
    @books = @reading_list.books
  end

  def update
    id = params[:id]
    @reading_list = ReadingList.find(id)
    @reading_list.update(
      name: reading_list_params[:reading_list][:name]
      )
    redirect_to "/"
  end

  def destroy
    id = params[:id]
    ReadingList.destroy(id)
    redirect_to "/"
  end

  private

  def reading_list_params
    params.permit(reading_list:[:name])
  end

end
