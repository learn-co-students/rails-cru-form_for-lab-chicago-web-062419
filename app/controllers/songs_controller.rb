class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update]
    
    def index
        @songs = Song.all
    end
    
    def show
    end
    
    def new
        @song = Song.new
    end
    
    def create
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        # @song.name = params[:name]
        # @song.artist_id = Artist.find_by(name: params[:artist]).id
        # @song.genre_id = Genre.find_by(name: params[:genre]).id        
        @song.save
        redirect_to song_path(@song)
    end

    def edit
    end

    def update
        @song.update(song_params(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end

    private
    # def find_artist_or_genre
    #     artist_check = Artist.find_by(name: params[:artist])    
    #     if artist_check == true
    #         artist_check.id
    #     else
    #         index
    #     end
    # end

    def find_song
        @song = Song.find(params[:id])
    end

    def song_params(*args)
        params.require(:song).permit(*args)
    end


end
