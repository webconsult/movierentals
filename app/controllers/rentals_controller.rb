class RentalsController < ApplicationController
	def new
		@movie = Movie.find(params[:id])
		logger.debug @movie.as_json
		# title = Movie.find(params[:id]).title
		# logger.debug('movie is '+title)
		@rental = @movie.rentals.build
		logger.debug @rental.as_json
	end

	def create
		@movie = Movie.find(params[:id])
		@rental = @movie.rentals.build(params[:rental])
		if @rental.save
			redirect_to new_rental_path(:id => @movie.id)
		end
	end

  def rental_params
    params.require(:rental).permit(:borrowed_on, :returned_on)
  end
end
