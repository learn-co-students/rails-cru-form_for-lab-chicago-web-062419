class ArtistsController < ApplicationController
  #   before_action :find_artist

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to @artist
  end

  def show
    find_artist
  end

  def edit
    find_artist
  end

  def update
    find_artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end
