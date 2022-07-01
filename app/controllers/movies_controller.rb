class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    if params[:search].blank?
      render :index
    else
      @movie_id = Movie.where("title LIKE ?", "#{params[:search]}").first.id
      redirect_to action: 'show', id: @movie_id
    end
  end

  def show
    error_msg = 'Movie not found'
    @movie = Movie.find(params[:id]) 
  rescue ActiveRecord::RecordNotFound
      raise error_msg if @movie.nil? 
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    redirect_to root_path if @movie.save
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to root_path
    else
      render '/edit'
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, directors_attributes: [:id, :name])
  end
end
