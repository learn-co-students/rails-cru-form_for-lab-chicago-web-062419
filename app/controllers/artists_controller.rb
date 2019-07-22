class ArtistsController < ApplicationController
    before_action :artist, only: [:show, :edit, :update]
    def index
        @artists = Artist.all
    end
    
    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect
    end

    def show
    end

    def edit
    end

    def update
        @artist = Artist.update(artist_params)
        redirect
    end

    private

    def artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name,:bio)
    end

    def redirect
        redirect_to artist_path(@artist)
    end

end
