class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    # @director = @movie.director
    # @genre = @movie.genre
  end

  def new
    @movie = Movie.new
    @director = Director.new
    @genre = Genre.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to root_path
    elsif @director.save
      redirect_to root_path
    elsif @genre.save
      redirect_to root_path
    end
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
    params.require(:movie).permit(:title, :year, genre_attributes: [ :name ])
  end
end
