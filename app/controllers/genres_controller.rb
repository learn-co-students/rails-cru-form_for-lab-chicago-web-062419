class GenresController < ApplicationController
  #   before_action :find_genre
  #   Before doing anything else, run the given methods
  #   It will run every time. You don't need to call it
  # If you want it to only run for specific methods, add only:
  #   before_action :find_genre, only: [:show, :edit, :update]

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    # redirect_to genres_path
    # Goes to the index page
    redirect_to @genre
    # Goes to the show page for the individual instance
  end

  def show
    find_genre
  end

  def index
    @genres = Genre.all
  end

  def update
    find_genre
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
    # Above line is the same as:
    # redirect_to @genre
    # Redirects to the show page for the specific genre
  end

  def edit
    find_genre
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end
end
