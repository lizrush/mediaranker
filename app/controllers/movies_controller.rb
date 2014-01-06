class MoviesController < ApplicationController

# GET /movies
  def index
    @movies = Movie.all
  end
  
# GET /movies/:id  
  def show
    @movie = Movie.find(params[:id])
  end
 
 # GET /movies/new 
  def new
    @movie = Movie.new
  end
 
 # POST /movies 
  def create
    @movie = Movie.new(movie_params)
  
    if @movie.save
      redirect_to @movie, notice: 'Movie was successfully created.'
    else
      render 'new'
    end
  end
  
 # GET movies/:id/edit 
  def edit
  end
 
 # PUT/PATCH movies/:id 
  def update
    if @movie.update
      redirect_to @movie, notice: 'Movie was successfully updated.'
    else
      render 'edit'
    end
  end
  
 # DELETE /movies/:id 
  def destroy
  end


private

  def movie_params
    params.require(:movie).permit(:name, :director, :description)
  end

end