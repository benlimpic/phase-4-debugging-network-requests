class MoviesController < ApplicationController

  def create
    movie =Movi.create(movie_params)
    render json: movie, status: :created
  end
  
  def index
    movies = Movie.all
    render json: movies
  end

  private

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :post_url, :category, :discount, :female_director)
  end

end
