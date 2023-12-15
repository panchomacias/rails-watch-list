class MoviesController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @movie = Movie.new
  end

  def create

  end
end
