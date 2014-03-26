class MoviesController < ApplicationController
    def new
        @movie = Movie.new
        @movies= Movie.all
    end

    def create
        @movie= Movie.new(movie_params)

        if @movie.save
            redirect_to new_movie_path
        end
    end

    def movie_params
        params.require(:movie).permit(:year, :title)
    end
end