class GenresController < ApplicationController
    before_action :genre, only: [:show, :edit, :update]
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)
        redirect
    end

    def show
    end

    def edit
    end

    def update
        @genre = Genre.update(genre_params)
        redirect
    end

    private

    def genre
        @genre = Genre.find(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end

    def redirect
        redirect_to genre_path(@genre)
    end
end
