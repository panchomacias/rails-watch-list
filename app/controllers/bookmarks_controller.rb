class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list_id = @list.id
    if @bookmark.save
      redirect_to @bookmark.list, notice: 'Bookmark created.'
    else
      render :new
    end
  end

  def destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
