class GenresController < ApplicationController
	before_action :find_genre, only: [:show, :edit, :update]
	# runs this on all of the methods first 
	
	def new
		@genre = Genre.new
	end 

	def create
		@genre = Genre.new(genre_params)
		@genre.save
		redirect_to @genre 
		# goes to the show page for the new genre instance 
	end 

	def show
		
	end

	def index
		@genres = Genre.all 
	end 

	def update
		@genre.update(genre_params)
		redirect_to @genre 
		
	end 

	def edit 

	end 


	private 

	def genre_params 
		params.require(:genre).permit(:name)
	end 

	def find_genre 
		@genre = Genre.find(params[:id])
	end


end
